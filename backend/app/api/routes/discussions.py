from fastapi import APIRouter, Depends, HTTPException, status, Request, Response, Form
from fastapi.params import Query
from sqlalchemy.ext.asyncio import AsyncSession
from typing import Annotated, List
from sqlalchemy import exists, func, select
from sqlalchemy.orm import joinedload

from app.api.deps import OptionalUserDep, UserDep, DbSession, SkipParam, LimitParam
from app.api.schemas.discussion import DiscussionBase, DiscussionCreate, DiscussionCreateOut, DiscussionDetail, DiscussionListItem, DiscussionRead
from app.api.schemas.reply import ReplyRead, ReplyCreate
from app.core.utils import parse_slugid, slugify_tr
from app.models.subcategory import Subcategory
from app.models.category import Category
from app.models.discussion import Discussion
from app.models.reply import Reply
from app.models.reply_like import ReplyLike
from app.models.user import User


router = APIRouter(prefix="/discussions", tags=["discussions"])


@router.get("",
            summary="Get discussions by category or subcategory id",
            response_model=List[DiscussionListItem],
            status_code=status.HTTP_200_OK)
async def list_discussions(
    db: DbSession,
    category_id: int | None = None,
    subcategory_id: int | None = None,
    limit: LimitParam = 20,
    skip: SkipParam = 0,
):
    total = (await db.execute(select(func.count()).select_from(Discussion))).scalar_one()
    q = select(Discussion).options(
        joinedload(Discussion.author).load_only(User.id, User.username, User.avatar_url)
    )
    if subcategory_id is not None:
        q = q.where(Discussion.subcategory_id == subcategory_id)
    elif category_id is not None:
        q = q.where(Discussion.category_id == category_id)

    q = q.order_by(Discussion.is_pinned.desc(),
                   func.coalesce(Discussion.last_reply_at, Discussion.created_at).desc()).limit(limit).offset(skip)

    
    discussions = (await db.execute(q)).scalars().all()
    # AuthorSummary map’le
    items = []
    for d in discussions:
        items.append(DiscussionListItem(
            id=d.id,
            title=d.title,
            slug=d.slug,
            public_id=d.public_id,
            author={"id": d.author.id,
                    "username": d.author.username,
                    "avatar_url": d.author.avatar_url},
            view_count=d.view_count,
            reply_count=d.reply_count,
            last_reply_at=d.last_reply_at if d.last_reply_at else d.created_at,
            created_at=d.created_at,
            is_pinned=d.is_pinned,
            is_locked=d.is_locked,
        ))
    return items

@router.post("", response_model= DiscussionCreateOut, status_code=status.HTTP_201_CREATED)
async def create_discussion(
    discussion: DiscussionCreate,
    db: DbSession,
    user: UserDep
):
    slug = slugify_tr(discussion.title)
    new_discussion = Discussion(**discussion.model_dump(), author_id=user.id, slug=slug)
    db.add(new_discussion)
    await db.commit()
    await db.refresh(new_discussion)
    return new_discussion
    

@router.delete("/{discussion_id}",status_code=status.HTTP_204_NO_CONTENT)
async def delete_discussion(
    discussion_id: int,
    db: DbSession,
    user: UserDep,
):
    result = await db.execute(select(Discussion).where(Discussion.id == discussion_id))
    discussion = result.scalar_one_or_none()
    
    if not discussion:
        raise HTTPException(
            status_code=status.HTTP_404_NOT_FOUND,
            detail="Discussion not found"
        )
    if user.id != discussion.author_id:
        raise HTTPException(
            status_code=status.HTTP_403_FORBIDDEN,
            detail="You do not have permission to delete this discussion"
        )
    
    await db.delete(discussion)
    await db.commit()


@router.get("/by-slugid/{slugid}",
            response_model=DiscussionDetail,
            status_code=status.HTTP_200_OK,
            summary="Get discussion by id")
async def get_discussion(
    slugid: str,
    db: DbSession,
):
    slug, public_id = parse_slugid(slugid)
    q = select(Discussion).options(
        joinedload(Discussion.author).load_only(User.id, User.username, User.avatar_url),
        joinedload(Discussion.category).load_only(Category.id, Category.title, Category.slug, Category.public_id),
        joinedload(Discussion.subcategory).load_only(Subcategory.id, Subcategory.title, Subcategory.slug, Subcategory.public_id),
    ).where(Discussion.slug == slug, Discussion.public_id == public_id)
    
    discussion = (await db.execute(q)).scalar_one_or_none()
    
    if not discussion:
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND, detail="Discussion not found")
    
    return DiscussionDetail(
        id=discussion.id,
        title=discussion.title,
        content=discussion.content,
        author={"id": discussion.author.id,
                "username": discussion.author.username,
                "avatar_url": discussion.author.avatar_url},
        category = {
            "id": discussion.category.id,
            "title": discussion.category.title,
            "slug": discussion.category.slug,
            "public_id": discussion.category.public_id
        },
        subcategory = {
            "id": discussion.subcategory.id,
            "title": discussion.subcategory.title,
            "slug": discussion.subcategory.slug,
            "public_id": discussion.subcategory.public_id
        } if discussion.subcategory else None,
        subcategory_title=discussion.subcategory.title if discussion.subcategory else None,
        created_at=discussion.created_at,
        updated_at=discussion.updated_at,
        is_pinned=discussion.is_pinned,
        is_locked=discussion.is_locked,
        view_count=discussion.view_count,
    )


# Reply Endpoints
@router.get(
    "/{discussion_id}/replies",
    response_model=List[ReplyRead],
    status_code=status.HTTP_200_OK,
    summary="List replies for a discussion (oldest→newest, paginated) with like status"
)
async def list_replies_by_discussion(
    db: DbSession, 
    discussion_id: int,
    current_user : OptionalUserDep, 
    limit=50, 
    offset=0,
):
    discussion = (await db.execute(select(Discussion).where(Discussion.id == discussion_id))).scalar_one_or_none()
    if not discussion:
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND, detail="Discussion not found")

    q = (select(Reply)
         .options(joinedload(Reply.author).load_only(User.id, User.username, User.avatar_url))
         .where(Reply.discussion_id == discussion_id)
         .order_by(Reply.created_at.asc())
         .limit(limit)
         .offset(offset)
    )
    replies = (await db.execute(q)).scalars().all()


    # is_liked sorgusu mevcut replylar icin
    if current_user:
        reply_ids = [r.id for r in replies]
        like_q = select(ReplyLike.reply_id).where(
            ReplyLike.reply_id.in_(reply_ids),
            ReplyLike.user_id == current_user.id,
            ReplyLike.value == 1
        )
        liked_ids = set((await db.execute(like_q)).scalars().all())
    else:
        liked_ids = set()
    
    items = []

    for r in replies:
        items.append({
            "id": r.id,
            "content": r.content,
            "discussion_id": r.discussion_id,
            "like_count": r.like_count,
            "created_at": r.created_at,
            "updated_at": r.updated_at,
            "author": {
                "id": r.author.id,
                "username": r.author.username,
                "avatar_url": r.author.avatar_url
            },
            "is_liked": r.id in liked_ids
        })

    return items