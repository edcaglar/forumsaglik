from app.core.utils import new_public_id
from ..core.db import Base
from sqlalchemy.orm import Mapped
from sqlalchemy.orm import mapped_column
from sqlalchemy.orm import relationship
from sqlalchemy import CheckConstraint, ForeignKeyConstraint, Index, String, DateTime, func, ForeignKey, Text, text
from datetime import datetime
from typing import List, TYPE_CHECKING, Optional


if TYPE_CHECKING:
    from .user import User
    from .category import Category
    from .reply import Reply
    from .subcategory import Subcategory

class Discussion(Base):
    __tablename__ = "discussions"
    __table_args__ = (
        # 1) category_id her zaman dolu olmalı; subcategory varsa ikisi de dolu
        CheckConstraint(
            "(subcategory_id IS NULL AND category_id IS NOT NULL) "
            "OR (subcategory_id IS NOT NULL AND category_id IS NOT NULL)",
            name="ck_discussions_cat_or_subcat"
        ),
        Index("idx_discussions_user_sort",
              "author_id",
              text("created_at DESC"),
              text("id DESC")
    ))

    id: Mapped[int] = mapped_column(primary_key=True)
    title: Mapped[str] = mapped_column(String(100), nullable=False)
    content: Mapped[str] = mapped_column(Text, nullable=False)
    is_pinned: Mapped[bool] = mapped_column(default=False, nullable=False)
    is_locked: Mapped[bool] = mapped_column(default=False, nullable=False)
    reply_count: Mapped[int] = mapped_column(default=0, nullable=False)
    view_count: Mapped[int] = mapped_column(default=1, nullable=False)
    last_reply_at: Mapped[Optional[datetime]] = mapped_column(DateTime(timezone=True), index=True)

    slug: Mapped[str] = mapped_column(String(100), nullable=False, index=True)
    public_id: Mapped[str] = mapped_column(String(26), nullable=False, index=True, unique=True, default=new_public_id)

    author_id: Mapped[int] = mapped_column(
        ForeignKey("users.id", ondelete="CASCADE"),
        nullable=False,
        index=True
    )

    category_id: Mapped[int] = mapped_column(
        ForeignKey("categories.id", ondelete="CASCADE"),
                   nullable=False, index=True)
    
    subcategory_id: Mapped[Optional[int]] = mapped_column(
        ForeignKey("subcategories.id", ondelete="CASCADE"),
        nullable=True, index=True)
    

    created_at: Mapped[datetime] = mapped_column(
        DateTime(timezone=True),
        server_default=func.now(),
        nullable=False
    )

    updated_at: Mapped[datetime] = mapped_column(
        DateTime(timezone=True),
        server_default=func.now(),
        onupdate=func.now(),
        nullable=False
    )

    # Relations
    author: Mapped["User"] = relationship(
        "User",
        back_populates="discussions",
        passive_deletes=True
    )

    category: Mapped["Category"] = relationship(
        "Category",
        back_populates="discussions",
        passive_deletes=True
    )

    subcategory: Mapped[Optional["Subcategory"]] = relationship(
        "Subcategory",
        back_populates="discussions",
        passive_deletes=True
    )

    replies: Mapped[List["Reply"]] = relationship(
        "Reply",
        back_populates="discussion",
        cascade="all, delete-orphan"
    )