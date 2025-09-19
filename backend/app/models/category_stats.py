# app/models/category_stats.py
from __future__ import annotations
from datetime import datetime
from typing import TYPE_CHECKING, Optional
from sqlalchemy.orm import Mapped, mapped_column, relationship
from sqlalchemy import Boolean, DateTime, Numeric, Integer, ForeignKey
from ..core.db import Base

if TYPE_CHECKING:
    from .category import Category

class CategoryStats(Base):
    __tablename__ = "category_stats"
    category_id: Mapped[int] = mapped_column(ForeignKey("categories.id", ondelete="CASCADE"), primary_key=True)
    discussion_count: Mapped[int] = mapped_column(Integer, default=0)
    member_count: Mapped[int] = mapped_column(Integer, default=0)
    last_activity: Mapped[Optional[datetime]] = mapped_column(DateTime(timezone=True))
    is_popular: Mapped[bool] = mapped_column(Boolean, default=False)
    
    category: Mapped["Category"] = relationship(back_populates="stats")
