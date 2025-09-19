from app.core.utils import new_public_id
from ..core.db import Base

from datetime import datetime
from typing import List, Optional
from sqlalchemy import String, Text, DateTime, func, ForeignKey, Index, UniqueConstraint
from sqlalchemy.orm import Mapped, mapped_column, relationship
from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from .discussion import Discussion
    from .category import Category
    from .subcategory_stats import SubcategoryStats

class Subcategory(Base):
    __tablename__ = "subcategories"
    __table_args__ = (
        UniqueConstraint("category_id", "slug", name="uq_subcategories_category_slug"),
        )
    

    id:          Mapped[int]          = mapped_column(primary_key=True, index=True)
    title:       Mapped[str]          = mapped_column(String(100), nullable=False)
    description: Mapped[Optional[str]] = mapped_column(String(100), nullable=True)
    color:     Mapped[Optional[str]] = mapped_column(String(20), nullable=True)
    icon:     Mapped[Optional[str]] = mapped_column(String(50), nullable=True)

    slug: Mapped[str] = mapped_column(String(100), nullable=False)
    public_id: Mapped[str] = mapped_column(String(26), nullable=False, index=True, unique=True, default=new_public_id)


    category_id: Mapped[int] = mapped_column(ForeignKey("categories.id",
                                                        ondelete="CASCADE"),
                                                        nullable=False)

    created_at:  Mapped[datetime] = mapped_column(
        DateTime(timezone=True), server_default=func.now(), nullable=False
    )
    updated_at:  Mapped[datetime] = mapped_column(
        DateTime(timezone=True), server_default=func.now(),
        onupdate=func.now(), nullable=False
    )

    # İlişkiler
    category:   Mapped["Category"] = relationship(
        "Category",
        back_populates="subcategories",
    )

    discussions:  Mapped[List["Discussion"]]    = relationship(
        "Discussion",
        back_populates="subcategory",
        cascade="all, delete-orphan"
    )

    stats: Mapped["SubcategoryStats"] = relationship(
    "SubcategoryStats",
    uselist=False,
    back_populates="subcategory",
    cascade="all, delete-orphan"
    )