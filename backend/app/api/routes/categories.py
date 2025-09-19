from fastapi import APIRouter, Depends, HTTPException, status, Query
from typing import Annotated, List
from sqlalchemy import select

from app.api.deps import admin_required, SkipParam, LimitParam
from app.api.schemas.category_stats import CategoryStatsRead
from app.api.schemas.subcategory import SubcategoryOption
from app.core.db import async_get_db
from app.api.schemas.category import CategoryOption, CategoryRead
from app.core.utils import parse_slugid
from app.models.category import Category
from app.models.category_stats import CategoryStats
from app.api.deps import DbSession
from app.models.subcategory import Subcategory
from sqlalchemy.orm import joinedload


router = APIRouter(prefix="/categories", tags=["categories"])

@router.get("/by-slugid/{slugid}", response_model=CategoryRead,
            status_code=status.HTTP_200_OK,
            summary="Get category by slug and public id")
async def get_category_by_slugid(
    slugid: str,
    db: DbSession,
):
    slug, public_id = parse_slugid(slugid)
    result = await db.execute(select(Category).where(Category.public_id == public_id,
                                                     Category.slug == slug))
    category = result.scalar_one_or_none()
    if not category:
        raise HTTPException(
            status_code=status.HTTP_404_NOT_FOUND,
            detail="Category not found"
        )
    
    return category

@router.get("/all-with-subcategories",
            # response_model=List[CategoryOption],
            status_code=status.HTTP_200_OK,
            summary="Get categories with all subcategories")
async def get_all_categories_with_subs(
    db: DbSession,
):
    db_query = select(Category).options(
                    joinedload(Category.subcategories)
                    .load_only(Subcategory.id, Subcategory.title, Subcategory.category_id)
                ).order_by(Category.title.asc())
                
    result = await db.execute(db_query)
    categories = result.unique().scalars().all()
    items = []
    for category in categories:
        items.append(
            CategoryOption(
                id=category.id,
                title=category.title,
                icon=category.icon,
                subcategories=[
                SubcategoryOption(
                    id=sub.id,
                    title=sub.title,
                    category_id=sub.category_id
            ) for sub in category.subcategories
        ] if category.subcategories else [])
    )
    return items


@router.get("/{category_id}", response_model=CategoryRead,
            status_code=status.HTTP_200_OK,
            summary="Get category by id")
async def get_category_by_id(
    category_id: int,
    db: DbSession,
):
    result = await db.execute(select(Category).where(Category.id == category_id))
    category = result.scalar_one_or_none()
    if not category:
        raise HTTPException(
            status_code=status.HTTP_404_NOT_FOUND,
            detail="Category not found"
        )
    return category




@router.get("", response_model=List[CategoryRead],
            status_code=status.HTTP_200_OK,
            summary="Get categories with pagination")
async def get_categories(
    db: DbSession,
    skip: SkipParam = 0,
    limit: LimitParam = 10,
):
    db_query = (select(Category)
                .order_by(Category.title.asc())
                .offset(skip)
                .limit(limit))
    
    result = await db.execute(db_query)
    categories = result.scalars().all()
    return categories

@router.delete("/{category_id}",status_code=status.HTTP_204_NO_CONTENT,
             dependencies=[Depends(admin_required)])
async def delete_category(
    category_id: int,
    db: DbSession,
):
    result = await db.execute(select(Category).where(Category.id == category_id))
    category = result.scalar_one_or_none()
    if not category:
        raise HTTPException(
            status_code=status.HTTP_404_NOT_FOUND,
            detail="Category not found"
        )
    await db.delete(category)
    await db.commit()



# Category Stats

@router.get("/stats/",
            status_code=status.HTTP_200_OK,
            response_model=List[CategoryStatsRead],
            summary="Get stats of category by ids")
async def get_category_stats_by_ids(
    db: DbSession,
    ids: Annotated[list[int] | None, Query(max_length=80)] = None # ?ids=1&ids=2&ids=3 şeklinde
):
    q = select(CategoryStats)
    if ids:
        q = q.where(CategoryStats.category_id.in_(ids))
    result = await db.execute(q)
    stats = result.scalars().all()
    return stats


# Subcategories
@router.get("/{category_id}/subcategories", response_model=List[CategoryRead],
            status_code=status.HTTP_200_OK,
            summary="Get sub-categories of a category with pagination")
async def get_sub_categories_by_category_id(
    category_id: int,
    db: DbSession,
    skip: SkipParam = 0,
    limit: LimitParam = 30,
):
    db_query = (select(Subcategory)
                .where(Subcategory.category_id == category_id)
                .order_by(Subcategory.title.asc())
                .offset(skip)
                .limit(limit))
    result = await db.execute(db_query)
    sub_categories = result.scalars().all()
    return sub_categories










