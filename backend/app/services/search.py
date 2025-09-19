
from typing import Optional
import base64
from datetime import datetime
from pydantic import BaseModel
from sqlalchemy import and_, desc, or_, select
from sqlalchemy.ext.asyncio import AsyncSession
from app.api.deps import DbSession  # -> AsyncSession dependency
from app.api.schemas.search import AuthorOut, DiscussionRefOut, DiscussionSearchResult, MetaOut, ReplySearchResult, SearchResult
from app.models import Discussion, Reply, User  # yollar/alanlar sende farklıysa
from app.core.utils import encode_cursor, decode_cursor, excerpt


# -------------------------------------------------
# Discussion sorgusu
# -------------------------------------------------
async def search_discussions(
    db: AsyncSession,
    q: str,
    cursor: Optional[str],
    limit: int,
) -> SearchResult:
    # Kolonlar
    stmt = (
        select(
            Discussion.id,
            Discussion.title,
            Discussion.slug,
            Discussion.public_id,
            Discussion.created_at,
            Discussion.reply_count,
            User.id.label("author_id"),
            User.username.label("author_username"),
        )
        .join(User, User.id == Discussion.author_id)
    )

    # Basit filtre: ILIKE (full-text istersen burada tsquery ekleyebilirsin)
    if q:
        like = f"%{q}%"
        stmt = stmt.where(or_(Discussion.title.ilike(like), Discussion.content.ilike(like)))

    # Keyset cursor
    if cursor:
        cur = decode_cursor(cursor)
        if cur:
            cur_ts, cur_id = cur
            stmt = stmt.where(
                or_(
                    Discussion.created_at < cur_ts,
                    and_(Discussion.created_at == cur_ts, Discussion.id < cur_id),
                )
            )

    # Sıralama + limit(+1)
    stmt = stmt.order_by(desc(Discussion.created_at), desc(Discussion.id)).limit(limit + 1)
    rows = (await db.execute(stmt)).all()

    has_more = len(rows) > limit
    rows = rows[:limit]

    items: list[DiscussionSearchResult] = []
    next_cursor: Optional[str] = None

    for r in rows:
        d_id, title, slug, public_id, created_at, reply_count, a_id, a_username = r
        items.append(
            DiscussionSearchResult(
                id=d_id,
                title=title,
                slug=slug,
                publicId=public_id,
                createdAt=created_at,
                replyCount=reply_count or 0,
                author=AuthorOut(id=a_id, username=a_username),
            )
        )

    if has_more and rows:
        d_id, _, _, _, created_at, _, _, _ = rows[-1]
        next_cursor = encode_cursor(created_at, d_id)

    return SearchResult(items=items, meta=MetaOut(nextCursor=next_cursor))

# -------------------------------------------------
# Replies sorgusu
# -------------------------------------------------
async def search_replies(
    db: AsyncSession,
    q: str,
    cursor: Optional[str],
    limit: int,
) -> SearchResult:
    stmt = (
        select(
            Reply.id,
            Reply.content,
            Reply.created_at,
            User.id.label("author_id"),
            User.username.label("author_username"),
            Discussion.id.label("discussion_id"),
            Discussion.title.label("discussion_title"),
            Discussion.slug.label("discussion_slug"),
            Discussion.public_id.label("discussion_public_id"),
        )
        .join(User, User.id == Reply.author_id)
        .join(Discussion, Discussion.id == Reply.discussion_id)
    )

    if q:
        like = f"%{q}%"
        stmt = stmt.where(
            or_(
                Reply.content.ilike(like),
                Discussion.title.ilike(like),
            )
        )

    if cursor:
        cur = decode_cursor(cursor)
        if cur:
            cur_ts, cur_id = cur
            stmt = stmt.where(
                or_(
                    Reply.created_at < cur_ts,
                    and_(Reply.created_at == cur_ts, Reply.id < cur_id),
                )
            )

    stmt = stmt.order_by(desc(Reply.created_at), desc(Reply.id)).limit(limit + 1)
    rows = (await db.execute(stmt)).all()

    has_more = len(rows) > limit
    rows = rows[:limit]

    items: list[ReplySearchResult] = []
    next_cursor: Optional[str] = None

    for r in rows:
        (
            r_id,
            content,
            created_at,
            a_id,
            a_username,
            t_id,
            t_title,
            t_slug,
            t_public_id,
        ) = r
        items.append(
            ReplySearchResult(
                id=r_id,
                content=excerpt(content),
                createdAt=created_at,
                author=AuthorOut(id=a_id, username=a_username),
                discussion=DiscussionRefOut(id=t_id, title=t_title, slug=t_slug , publicId=t_public_id),
            )
        )

    if has_more and rows:
        r_id, _, created_at, *_ = rows[-1]
        next_cursor = encode_cursor(created_at, r_id)

    return SearchResult(items=items, meta=MetaOut(nextCursor=next_cursor))