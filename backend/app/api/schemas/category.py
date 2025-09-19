# schemas/category.py
from pydantic import BaseModel, ConfigDict
from typing import Optional
from datetime import datetime
from app.api.schemas.common import SlugIdUrlMixin
from app.api.schemas.subcategory import SubcategoryOption
from app.core.utils import to_camel_case

class CategoryBase(BaseModel):
    model_config = ConfigDict(from_attributes=True,
                              alias_generator=to_camel_case,
                              populate_by_name=True)
    id: int
    title: str

class CategoryCreate(CategoryBase):
    pass

class CategoryRead(CategoryBase, SlugIdUrlMixin):
    description: Optional[str]
    color: Optional[str]
    icon: Optional[str]

class CategoryOption(CategoryBase):
    icon: Optional[str]
    subcategories: Optional[list[SubcategoryOption]] = []