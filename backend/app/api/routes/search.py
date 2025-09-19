# app/api/routes/search.py
from __future__ import annotations

import base64
from base64 import b64encode, b64decode
from datetime import datetime
from typing import Literal, Optional

from fastapi import APIRouter, Depends, HTTPException, Query
from pydantic import BaseModel
from sqlalchemy import and_, desc, or_, select
from sqlalchemy.ext.asyncio import AsyncSession

# Projene göre importları uyarlayın
from app.api.deps import DbSession  # -> AsyncSession dependency
from app.api.schemas.search import SearchResult
from app.services.search import search_discussions, search_replies

router = APIRouter(prefix="/search", tags=["search"])

# -------------------------------------------------
# Tek endpoint: type=discussions|replies
# -------------------------------------------------
@router.get("", response_model=SearchResult)
async def search_endpoint(
    db: DbSession,
    q: str = Query(default="", description="Arama sorgusu (opsiyonel)"),
    type: Literal["discussions", "replies"] = Query(default="discussions"),
    cursor: Optional[str] = Query(default=None),
    limit: int = Query(default=20, ge=1, le=100),
):
    """
    Tek uç nokta:
      - type=discussions|replies
      - q opsiyonel; boşsa en yeni kayıtlar gelir
      - keyset cursor: base64("timestamp|id")
      - sıralama: created_at DESC, id DESC
    """
    q = (q or "").strip()
    if type == "discussions":
        return await search_discussions(db, q, cursor, limit)
    else:
        return await search_replies(db, q, cursor, limit)


