from pydantic import BaseModel, ConfigDict
from typing import Optional
from datetime import datetime

from app.api.schemas.user import UserDetail
from app.core.utils import to_camel_case

class ReplyBase(BaseModel):
    model_config = ConfigDict(from_attributes=True,
                              alias_generator=to_camel_case,
                              populate_by_name=True)
    content: str

class ReplyCreate(ReplyBase):
    discussion_id: int

class ReplyRead(ReplyBase):
    id: int
    discussion_id: int
    like_count: int
    author: UserDetail
    created_at: datetime
    updated_at: datetime
    is_liked: bool