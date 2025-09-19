from pydantic import BaseModel, ConfigDict
from typing import List, Literal, Optional
from datetime import datetime
from pydantic.alias_generators import to_camel


class ActivityItem(BaseModel):
    model_config = ConfigDict(from_attributes=True,
                              alias_generator=to_camel,
                              populate_by_name=True)    
    kind: Literal["discussion","reply"]
    item_id: int
    ts: datetime
    title: str
    discussion_id: Optional[int] = None

class PageMeta(BaseModel):
    model_config = ConfigDict(from_attributes=True,
                            alias_generator=to_camel,
                            populate_by_name=True)   
    next_cursor: Optional[str] = None

class ActivityPage(BaseModel):
    items: List[ActivityItem]
    meta: PageMeta