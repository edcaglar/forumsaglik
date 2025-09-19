# services/views.py
from sqlalchemy import text, update

from app.models.discussion import Discussion

async def bump_view_count(db, discussion_id: int) -> None:
    await db.execute(update(Discussion)
                     .where(Discussion.id == discussion_id)
                     .values(view_count=Discussion.view_count + 1))
    await db.commit()