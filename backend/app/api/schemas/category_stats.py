# schemas/category_stats.py
from pydantic import BaseModel, ConfigDict
from typing import Optional
from datetime import datetime
from pydantic.alias_generators import to_camel


class CategoryStatsBase(BaseModel):
    model_config = ConfigDict(from_attributes=True,
                              alias_generator=to_camel,
                              populate_by_name=True)
    category_id: int
    


class CategoryStatsRead(CategoryStatsBase):
    discussion_count: int
    member_count: int
    last_activity: Optional[datetime] = None
    is_popular: bool    





