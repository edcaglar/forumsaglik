from sqlalchemy import select, func, update
from sqlalchemy.ext.asyncio import AsyncSession
from app.models import Category, Discussion, Reply, CategoryStats
from datetime import datetime, timedelta, timezone


# Recompute statistics for a specific category
async def recompute_category_stats(db: AsyncSession, category_id: int) -> None:

    # discussion count
    discussion_count = (await db.execute(
        select(func.count(Discussion.id)).where(Discussion.category_id == category_id)
    )).scalar_one()

    # member_count: benzersiz author
    member_count = (await db.execute(
        select(func.count(func.distinct(Discussion.author_id)))
        .where(Discussion.category_id == category_id)
    )).scalar_one()

    # last_activity: discussion.updated_at veya replies.updated_at max
    last_disc = (await db.execute(
        select(func.max(Discussion.updated_at)).where(Discussion.category_id == category_id)
    )).scalar_one()

    last_rep = (await db.execute(
        select(func.max(Reply.updated_at))
        .join(Discussion, Reply.discussion_id == Discussion.id)
        .where(Discussion.category_id == category_id)
    )).scalar_one()

    last_activity = max([d for d in [last_disc, last_rep] if d is not None], default=None)

    # popular_score: basit bir formül örneği (son 7 güne ağırlık verebilirsin)
    now = datetime.now(timezone.utc)
    three_days_ago = now - timedelta(days=3)
    is_popular = (
        discussion_count >= 5 and
        member_count >= 3 and
        (last_activity is not None and last_activity >= three_days_ago)
    )

    # upsert
    stats = await db.get(CategoryStats, category_id)
    if stats is None:
        stats = CategoryStats(
            category_id=category_id,
            discussion_count=discussion_count,
            member_count=member_count,
            last_activity=last_activity,
            is_popular=is_popular,
        )
        db.add(stats)
    else:
        stats.discussion_count = discussion_count
        stats.member_count = member_count
        stats.last_activity = last_activity
        stats.is_popular = is_popular

    await db.commit()

async def recompute_all_category_stats(db: AsyncSession) -> None:
    ids = (await db.execute(select(Category.id))).scalars().all()
    for cid in ids:
        await recompute_category_stats(db, cid)

# Recompute statistics for subcategories
# app/services/stats.py
from datetime import datetime, timedelta
from sqlalchemy import select, func
from sqlalchemy.ext.asyncio import AsyncSession
from app.models import Category, Subcategory, Discussion, Reply, CategoryStats, SubcategoryStats

# ---- mevcut category fonksiyonun vardı; altına subcategory versiyonunu ekle ----

async def recompute_subcategory_stats(db: AsyncSession, subcategory_id: int) -> None:

    # Son 7 gün içindeki discussion sayısı
    discussion_count = (await db.execute(
        select(func.count(Discussion.id))
        .where(Discussion.subcategory_id == subcategory_id)
    )).scalar_one()

    # Son 7 gün benzersiz yazar
    member_count = (await db.execute(
        select(func.count(func.distinct(Discussion.author_id)))
        .where(Discussion.subcategory_id == subcategory_id)
    )).scalar_one()

    # Last activity (discussion / reply)
    last_disc = (await db.execute(
        select(func.max(Discussion.updated_at))
        .where(Discussion.subcategory_id == subcategory_id)
    )).scalar_one()

    last_rep = (await db.execute(
        select(func.max(Reply.updated_at))
        .join(Discussion, Reply.discussion_id == Discussion.id)
        .where(Discussion.subcategory_id == subcategory_id)
    )).scalar_one()

    last_activity = max([d for d in [last_disc, last_rep] if d is not None], default=None)

    # Popülerlik kriteri (örnek eşikler)
    now = datetime.now(timezone.utc)
    three_days_ago = now - timedelta(days=3)
    is_popular = (
        discussion_count >= 5 and
        member_count >= 3 and
        (last_activity is not None and last_activity >= three_days_ago)
    )

    stats = await db.get(SubcategoryStats, subcategory_id)
    if stats is None:
        stats = SubcategoryStats(
            subcategory_id=subcategory_id,
            discussion_count=discussion_count,
            member_count=member_count,
            last_activity=last_activity,
            is_popular=is_popular
        )
        db.add(stats)
    else:
        stats.discussion_count = discussion_count
        stats.member_count = member_count
        stats.last_activity = last_activity
        stats.is_popular = is_popular

    await db.commit()


async def recompute_all_subcategory_stats(db: AsyncSession) -> None:
    ids = (await db.execute(select(Subcategory.id))).scalars().all()
    for sid in ids:
        await recompute_subcategory_stats(db, sid)
        


# jobs/stats_reconcile.py
async def reconcile_discussion_counters(db):
    # örnek: tek tek veya batch
    ids = (await db.execute(select(Discussion.id))).scalars().all()
    for did in ids:
        count = (await db.execute(
            select(func.count(Reply.id)).where(Reply.discussion_id == did)
        )).scalar_one()
        last  = (await db.execute(
            select(func.max(Reply.updated_at)).where(Reply.discussion_id == did)
        )).scalar_one()
        await db.execute(
            update(Discussion)
            .where(Discussion.id == did)
            .values(reply_count=count, last_reply_at=last)
        )
    await db.commit()
