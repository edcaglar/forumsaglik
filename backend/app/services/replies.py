# app/services/replies.py
from sqlalchemy.ext.asyncio import AsyncSession
from sqlalchemy import select, delete
from app.core.utils import utcnow
from app.models.reply import Reply
from app.services.counters import on_reply_created, on_reply_deleted

async def add_reply(db: AsyncSession, discussion_id: int, author_id: int, content: str) -> Reply:
    r = Reply(
        discussion_id=discussion_id,
        author_id=author_id,
        content=content,
        is_edited=False,
        created_at=utcnow(),
        updated_at=utcnow(),
    )
    db.add(r)
    # Sayaçları aynı transaction içinde güncelle
    await on_reply_created(db, discussion_id, now=r.updated_at)
    await db.commit()
    await db.refresh(r)
    return r

async def remove_reply(db: AsyncSession, reply: Reply) -> bool:

    await db.execute(delete(Reply).where(Reply.id == reply.id))
    await on_reply_deleted(db, reply.discussion_id)
    await db.commit()
    return True
