from typing_extensions import Annotated
from fastapi import APIRouter, HTTPException, Query, status
from sqlalchemy.ext.asyncio import AsyncSession
from typing import List, Optional
from sqlalchemy import join, select
from app.api.deps import DbSession
from app.api.schemas.subcategory import SubcategoryWithCategoryData
from app.api.schemas.subcategory_stats import SubcategoryStatsRead
from app.core.utils import parse_slugid
from app.models.category import Category
from app.models.subcategory import Subcategory
from app.models.subcategory_stats import SubcategoryStats
from sqlalchemy.orm import joinedload



router = APIRouter(prefix="/subcategories", tags=["subcategories"])

@router.get("/by-slugid/{slugid}", response_model=SubcategoryWithCategoryData,
            status_code=status.HTTP_200_OK,
            summary="Get subcategory info by slugid")
async def get_subcategory_by_slugid(
    slugid: str,
    db: DbSession,
):
    slug, public_id = parse_slugid(slugid)
    print(slug, public_id)
    q = (
        select(Subcategory).where(Subcategory.slug == slug,
                                  Subcategory.public_id == public_id)
                                  .options(
                                      joinedload(Subcategory.category)
                                      .load_only(Category.id, Category.title, Category.slug, Category.public_id)
                                      ))
            
    result = await db.execute(q)
    row = result.unique().scalar_one_or_none()
    if not row:
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND, detail="Subcategory not found")
    
    return SubcategoryWithCategoryData(
        id=row.id,
        title=row.title,
        description=row.description,
        icon=row.icon,
        slug=row.slug,
        public_id=row.public_id,
        category={
            "id": row.category.id,
            "title": row.category.title,
            "slug": row.category.slug,
            "public_id": row.category.public_id
        }
    )

@router.get("/{id}", response_model=SubcategoryWithCategoryData,
            status_code=status.HTTP_200_OK,
            summary="Get subcategory info by id")
async def get_subcategory_by_id(
    id: int,
    db: DbSession,
):
    q = (
        select(
            Subcategory.id.label("id"),
            Subcategory.title.label("title"),
            Subcategory.description.label("description"),
            Category.id.label("category_id"),
            Category.title.label("category_title"),
        )
        .select_from(join(Subcategory, Category, Subcategory.category_id == Category.id, isouter=True))
        .where(Subcategory.id == id)
    )
    row = (await db.execute(q)).mappings().one_or_none()
    if not row:
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND, detail="Subcategory not found")
    return dict(row)




# Subcategory Stats
@router.get("/stats/",
            status_code=status.HTTP_200_OK,
            response_model=List[SubcategoryStatsRead],
            summary="Get stats of subcategory by ids")
async def get_subcategory_stats_by_ids(
    db: DbSession,
    ids: Annotated[list[int] | None, Query(max_length=80)] = None  # ?ids=1&ids=2&ids=3 şeklinde
):
    q = select(SubcategoryStats)
    if ids:
        q = q.where(SubcategoryStats.subcategory_id.in_(ids))
    result = await db.execute(q)
    stats = result.scalars().all()
    return stats