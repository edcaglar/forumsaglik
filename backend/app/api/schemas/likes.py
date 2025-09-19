
from typing import Annotated
from pydantic import BaseModel, ConfigDict, Field, conint

from app.core.utils import to_camel_case

class LikeBase(BaseModel):
    model_config = ConfigDict(from_attributes=True,
                              alias_generator=to_camel_case,
                              populate_by_name=True)
    value: Annotated[int, Field(strict=True, ge=0, le=1)]  # 1-5 arası değer

class LikeOut(LikeBase):
    like_count: int

class LikeIn(LikeBase):
    pass