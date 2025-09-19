# app/models/reply_like.py
from __future__ import annotations
from datetime import datetime
from sqlalchemy import CheckConstraint, DateTime, ForeignKey, UniqueConstraint, Index, func
from sqlalchemy.orm import Mapped, mapped_column, relationship
from ..core.db import Base
from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from .reply import Reply
    from .user import User
    
class ReplyLike(Base):
    __tablename__ = "reply_likes"
    __table_args__ = (
        UniqueConstraint("user_id", "reply_id", name="uq_user_reply_like"),
        Index("ix_reply_likes_reply", "reply_id"),
        Index("ix_reply_likes_user", "user_id"),
        CheckConstraint("value IN (0, 1)", name="ck_reply_like_value"),  # Yalnızca 0 veya 1
    )

    id: Mapped[int] = mapped_column(primary_key=True)
    value: Mapped[int] = mapped_column(nullable=False)  # 1 (like) or 0 (unlike)

    reply_id: Mapped[int] = mapped_column(
        ForeignKey("replies.id", ondelete="CASCADE"),
        nullable=False
    )
    user_id: Mapped[int] = mapped_column(
        ForeignKey("users.id", ondelete="CASCADE"),
        nullable=False
    )

    created_at:  Mapped[datetime] = mapped_column(
        DateTime(timezone=True), server_default=func.now(), nullable=False
    )

    reply: Mapped["Reply"] = relationship("Reply", back_populates="likes")
