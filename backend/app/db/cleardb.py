# seed.py veya ayrı bir scriptte:
from sqlalchemy import text
from app.core.db import local_session
from app.models import ReplyLike, Reply, Discussion, Subcategory, Category, User
import asyncio

async def clear_all_data():
    async with local_session() as db:
        try:
            await db.execute(text('TRUNCATE TABLE reply_likes, replies, discussions, subcategories, categories, users RESTART IDENTITY CASCADE;'))
            await db.commit()
            print("Tüm veriler silindi.")
        except Exception as e:
            print(f"Veri temizleme hatası: {e}")
            await db.rollback()

if __name__ == "__main__":
    asyncio.run(clear_all_data())