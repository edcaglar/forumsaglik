from pydantic import BaseModel, ConfigDict
from pydantic.alias_generators import to_camel

from app.api.schemas.common import SlugIdUrlMixin


class Subcategory(BaseModel):
    model_config = ConfigDict(from_attributes=True,
                        alias_generator=to_camel,
                        populate_by_name=True)
    id: int
    title: str

class SubcategoryRead(Subcategory, SlugIdUrlMixin):
    description: str | None
    icon: str | None


class SubcategoryWithCategoryData(SubcategoryRead):
    category: SlugIdUrlMixin


class SubcategoryOption(Subcategory):
    category_id: int