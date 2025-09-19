from datetime import datetime
from pydantic import BaseModel, ConfigDict, EmailStr

from app.core.utils import to_camel_case

class UserBase(BaseModel):
    model_config = ConfigDict(from_attributes=True,
                              alias_generator=to_camel_case,
                              populate_by_name=True)

class UserDetail(UserBase):
    id: int
    username: str
    avatar_url: str | None = None
    

class UserCreate(UserBase):
    email: EmailStr
    password: str
    name: str
    surname: str
    username: str

class UserLogIn(UserBase):
    email: EmailStr
    password: str
    

class UserOut(UserBase):
    id: int
    name: str
    surname: str


class UserVerify(UserBase):
    id: int
    role: str
    username : str
    name: str


class UserCore(UserBase):
    id: int
    username: str
    email: str
    name: str
    surname: str
    avatar_url: str | None = None
    bio: str | None = None
    location: str | None = None
    website: str | None = None
    created_at: datetime

class UserUpdateIn(UserBase):
    name: str | None = None
    surname: str | None = None
    username: str | None = None
    avatar_url: str | None = None
    bio: str | None = None
    location: str | None = None
    website: str | None = None

class UserStats(UserBase):
    discussion_count: int
    reply_count: int

class UserSecurityOut(UserBase):
    has_password: bool
    providers: list[str]