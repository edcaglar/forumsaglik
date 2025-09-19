# schemas/category_stats.py
from pydantic import BaseModel, ConfigDict
from typing import Optional
from datetime import datetime
from pydantic.alias_generators import to_camel

# Subcategory Stats
class SubcategoryStatsBase(BaseModel):
    model_config = ConfigDict(from_attributes=True,
                              alias_generator=to_camel,
                              populate_by_name=True)
    subcategory_id: int
    
class SubcategoryStatsRead(SubcategoryStatsBase):
    discussion_count: int
    member_count: int
    last_activity: Optional[datetime] = None
    is_popular: bool    





