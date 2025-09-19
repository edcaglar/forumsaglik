# -------------------------------------------------
# Pydantic şemaları (TS tarafıyla uyumlu)
# -------------------------------------------------
from pydantic import BaseModel
from datetime import datetime
from typing import Optional

class AuthorOut(BaseModel):
    id: int
    username: str

class DiscussionRefOut(BaseModel):
    id: int
    title: str
    slug: str
    publicId: str

class DiscussionSearchResult(BaseModel):
    id: int
    title: str
    author: AuthorOut
    createdAt: datetime
    replyCount: int
    slug: str
    publicId: str

class ReplySearchResult(BaseModel):
    id: int
    content: str
    author: AuthorOut
    discussion: DiscussionRefOut
    createdAt: Optional[datetime] = None

class MetaOut(BaseModel):
    nextCursor: Optional[str] = None

class SearchResult(BaseModel):
    items: list[DiscussionSearchResult | ReplySearchResult]
    meta: MetaOut