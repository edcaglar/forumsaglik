# app/api/routes/replies.py
from sqlalchemy import select
from fastapi import APIRouter, Depends, HTTPException, status
from sqlalchemy.ext.asyncio import AsyncSession
from app.api.schemas.likes import LikeIn, LikeOut
from app.api.schemas.reply import ReplyCreate
from app.core.db import async_get_db
from app.api.deps import UserDep, DbSession
from app.models.reply import Reply
from app.models.reply_like import ReplyLike
from app.services.replies import add_reply, remove_reply

router = APIRouter(prefix="/replies", tags=["replies"])

@router.post("", status_code=status.HTTP_201_CREATED)
async def create_reply(reply_data: ReplyCreate, db: DbSession, user: UserDep):
    r = await add_reply(db,
                        discussion_id=reply_data.discussion_id,
                        content=reply_data.content,
                        author_id=user.id)
    return {"id": r.id}

@router.delete("/{reply_id}",
               status_code=status.HTTP_204_NO_CONTENT,
               summary="Delete a reply (only its author can delete)")
async def delete_reply(reply_id: int, db: DbSession, user: UserDep):
    stmt = select(Reply).where(
    Reply.id == reply_id,
    )
    result = await db.execute(stmt)
    reply = result.scalar_one_or_none()

    if not reply:
        raise HTTPException(
            status_code=status.HTTP_404_NOT_FOUND,
            detail="Reply not found"
        )
    if reply.author_id != user.id:
        raise HTTPException(
            status_code=status.HTTP_403_FORBIDDEN,
            detail="You do not have permission to delete this reply"
        )

    ok = await remove_reply(db, reply_id)
    if not ok:
        raise HTTPException(status.HTTP_500, "Reply could not be deleted")




# Likes

@router.post("/{reply_id}/vote", response_model=LikeOut, status_code=status.HTTP_200_OK)
async def like_toggle_reply(
    vote: LikeIn,
    reply_id: int,
    db: DbSession,
    user: UserDep,
):
    reply = await db.scalar(select(Reply)
                            .where(Reply.id == reply_id)
                            .with_for_update())
    if not reply:
        raise HTTPException(status_code=404, detail="Reply not found")
    
    existing_vote = await db.scalar(select(ReplyLike)
                                .where(ReplyLike.reply_id == reply_id,
                                        ReplyLike.user_id == user.id).with_for_update())
    old_val = existing_vote.value if existing_vote else 0
    new_val = int(vote.value)
    diff = new_val - old_val
    if diff == 0:
        # Hiç değişiklik yok → mevcut sayacı döndür
        return LikeOut(value=new_val, like_count=reply.like_count)
    if existing_vote is None:
        db.add(ReplyLike(reply_id=reply.id, user_id=user.id, value=new_val))
    else:
        existing_vote.value = new_val
    reply.like_count += diff
    await db.commit()

    return LikeOut(value=new_val, like_count=reply.like_count)


@router.get("/{reply_id}/like-count", response_model=int, status_code=status.HTTP_200_OK)
async def get_like_count(
    reply_id: int,
    db: DbSession,
):
    # 1) Reply var mı?
    reply = await db.get(Reply, reply_id)
    if reply is None:
        raise HTTPException(status_code=404, detail="Reply not found")
    
    # 2) Like sayısını döndür
    return reply.like_count