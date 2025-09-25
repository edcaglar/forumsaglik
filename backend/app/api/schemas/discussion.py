from pydantic import BaseModel, ConfigDict
from typing import Optional
from datetime import datetime

from app.api.schemas.common import SlugIdUrlMixin
from app.api.schemas.user import UserDetail
from app.core.utils import to_camel_case

class DiscussionBase(BaseModel):
    model_config = ConfigDict(from_attributes=True,
                              alias_generator=to_camel_case,
                              populate_by_name=True)
    id: int
    title: str

class DiscussionCreateOut(DiscussionBase, SlugIdUrlMixin):
    pass

class DiscussionListItem(DiscussionBase, SlugIdUrlMixin):
    view_count: int
    reply_count: int
    last_reply_at: datetime | None = None
    is_pinned: bool
    is_locked: bool
    author: UserDetail
    created_at: datetime



class DiscussionDetail(DiscussionBase):
    subcategory : SlugIdUrlMixin | None = None
    category: SlugIdUrlMixin
    content: str
    created_at: datetime
    updated_at: datetime | None = None
    author: UserDetail
    view_count: int



class DiscussionCreate(BaseModel):
    model_config = ConfigDict(from_attributes=True,
                            alias_generator=to_camel_case,
                            populate_by_name=True)
    title: str
    content: str
    category_id: int
    subcategory_id: Optional[int] = None

class DiscussionRead(DiscussionBase):    
    is_pinned: bool
    is_locked: bool

    created_at: datetime
    updated_at: datetime


