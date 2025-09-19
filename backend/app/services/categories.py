# services/category.py (create)
from app.api.deps import DbSession
from app.core.utils import slugify_tr
from app.models.category import Category

async def create_category(db: DbSession, title: str) -> Category:
    slug = slugify_tr(title)[:100]  # güvenli sınır
    cat = Category(title=title, slug=slug)
    db.add(cat)
    await db.flush()   # public_id üretildi, id de oluştu
    await db.commit()
    await db.refresh(cat)
    return cat
