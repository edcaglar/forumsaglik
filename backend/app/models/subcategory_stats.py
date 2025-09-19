# app/models/subcategory_stats.py
from __future__ import annotations
from datetime import datetime
from typing import TYPE_CHECKING, Optional
from sqlalchemy.orm import Mapped, mapped_column, relationship
from sqlalchemy import DateTime, Integer, Boolean, ForeignKey
from ..core.db import Base

if TYPE_CHECKING:
    from .subcategory import Subcategory

class SubcategoryStats(Base):
    __tablename__ = "subcategory_stats"

    subcategory_id: Mapped[int] = mapped_column(
        ForeignKey("subcategories.id", ondelete="CASCADE"),
        primary_key=True
    )
    discussion_count: Mapped[int] = mapped_column(Integer, default=0)
    member_count: Mapped[int] = mapped_column(Integer, default=0)
    last_activity: Mapped[Optional[datetime]] = mapped_column(DateTime(timezone=True))
    is_popular: Mapped[bool] = mapped_column(Boolean, default=False)

    subcategory: Mapped["Subcategory"] = relationship(back_populates="stats")
