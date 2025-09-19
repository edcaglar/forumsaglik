# app/api/schemas/direct_message.py
from pydantic import BaseModel, ConfigDict, Field
from datetime import datetime

from app.core.utils import to_camel_case

class DirectMessageBase(BaseModel):
    model_config = ConfigDict(from_attributes=True,
                              alias_generator=to_camel_case,
                              populate_by_name=True)
    receiver_id: int
    body: str

class DirectMessageCreate(DirectMessageBase):
    pass

class DirectMessageRead(DirectMessageBase):
    id: int
    sender_id: int
    created_at: datetime
