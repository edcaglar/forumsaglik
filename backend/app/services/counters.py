# app/services/counters.py
from typing import Optional
from datetime import datetime, UTC
from sqlalchemy import select, update, case, text
from sqlalchemy.ext.asyncio import AsyncSession

from app.models.discussion import Discussion
from app.models.reply import Reply
from app.core.utils import utcnow

async def on_reply_created(db: AsyncSession, discussion_id: int, now: Optional[datetime] = None) -> None:
    """
    Reply eklendikten sonra çağır: reply_count += 1, last_reply_at = now().
    Commit'i burada DEĞİL, çağıran tarafta yap ki tek transaction'da kalsın.
    """
    now = now or utcnow()
    # Postgres'te now() yerine parametreli aware datetime kullanıyoruz
    await db.execute(
        update(Discussion)
        .where(Discussion.id == discussion_id)
        .values(
            reply_count=Discussion.reply_count + 1,
            last_reply_at=now
        )
    )

async def on_reply_deleted(db: AsyncSession, discussion_id: int) -> None:
    """
    Reply silindikten sonra çağır: reply_count -= 1 (0 altına düşmez),
    last_reply_at = o tartışmadaki max(Reply.updated_at).
    """
    last = (await db.execute(
        select(Reply.updated_at)
        .where(Reply.discussion_id == discussion_id)
        .order_by(Reply.updated_at.desc())
        .limit(1)
    )).scalar_one_or_none()

    await db.execute(
        update(Discussion)
        .where(Discussion.id == discussion_id)
        .values(
            reply_count=case(
                (Discussion.reply_count > 0, Discussion.reply_count - 1),
                else_=0
            ),
            last_reply_at=last
        )
    )

async def bump_view_count(db: AsyncSession, discussion_id: int) -> None:
    """
    Görüntülenme sayacı.
    """
    await db.execute(
        update(Discussion)
        .where(Discussion.id == discussion_id)
        .values(view_count=Discussion.view_count + 1)
    )
