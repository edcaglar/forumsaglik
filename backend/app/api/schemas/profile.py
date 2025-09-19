from pydantic import BaseModel, ConfigDict
from typing import List, Literal, Optional
from datetime import datetime
from pydantic.alias_generators import to_camel



class PageMeta(BaseModel):
    model_config = ConfigDict(from_attributes=True,
                            alias_generator=to_camel,
                            populate_by_name=True)   
    next_cursor: Optional[str] = None

class ProfileDiscussionItem(BaseModel):
    model_config = ConfigDict(from_attributes=True,
                              alias_generator=to_camel,
                              populate_by_name=True)    
    id: int
    title: str
    excerpt: str
    category: str
    reply_count: int
    view_count: int
    created_at: datetime

class ProfileDiscussionPage(BaseModel):
    items: List[ProfileDiscussionItem]
    meta: PageMeta

class ProfileReplyItem(BaseModel):
    model_config = ConfigDict(from_attributes=True,
                              alias_generator=to_camel,
                              populate_by_name=True)    
    id: int
    content: str

    like_count: int
    discussion_id: int
    discussion_title: str
    category: str
    created_at: datetime

class ProfileReplyPage(BaseModel):
    items: List[ProfileReplyItem]
    meta: PageMeta