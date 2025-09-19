from ..core.db import Base

from datetime import datetime
from typing import List, Optional
from sqlalchemy import String, Text, DateTime, func, ForeignKey, Index, UniqueConstraint
from sqlalchemy.orm import Mapped, mapped_column, relationship
from typing import TYPE_CHECKING
from app.core.utils import new_public_id

if TYPE_CHECKING:
    from .discussion import Discussion
    from .subcategory import Subcategory
    from .category_stats import CategoryStats

class Category(Base):
    __tablename__ = "categories"
    # __table_args__ = ()

    id:          Mapped[int]          = mapped_column(primary_key=True)
    title:       Mapped[str]          = mapped_column(String(100), nullable=False, index=True, unique=True)
    description: Mapped[Optional[str]] = mapped_column(String(100), nullable=True)
    color:     Mapped[Optional[str]] = mapped_column(String(20), nullable=True)
    icon:     Mapped[Optional[str]] = mapped_column(String(50), nullable=True)
    
    slug: Mapped[str] = mapped_column(String(100), nullable=False, index=True, unique=True)
    public_id: Mapped[str] = mapped_column(String(26), nullable=False, index=True, unique=True, default=new_public_id)

    created_at:  Mapped[datetime] = mapped_column(
        DateTime(timezone=True), server_default=func.now(), nullable=False
    )
    updated_at:  Mapped[datetime] = mapped_column(
        DateTime(timezone=True), server_default=func.now(),
        onupdate=func.now(), nullable=False
    )

    # İlişkiler
    
    subcategories: Mapped[List["Subcategory"]] = relationship(
        "Subcategory",
        back_populates="category", 
        cascade="all, delete-orphan")
    
    # Category'e doğrudan bağlı discussion'lar (subcategory'siz)
    discussions: Mapped[List["Discussion"]] = relationship(
        "Discussion",
        back_populates="category",
        primaryjoin="and_(Category.id==Discussion.category_id, Discussion.subcategory_id==None)"
    )

    stats: Mapped["CategoryStats"] = relationship(
    "CategoryStats",
    uselist=False,
    back_populates="category",
    cascade="all, delete-orphan")