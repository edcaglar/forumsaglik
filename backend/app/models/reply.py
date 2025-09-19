from ..core.db import Base
from sqlalchemy.orm import Mapped
from sqlalchemy.orm import mapped_column
from sqlalchemy.orm import relationship
from sqlalchemy import Integer, Text, DateTime, func, ForeignKey, Index, text
from datetime import datetime
from typing import List, TYPE_CHECKING


if TYPE_CHECKING:
    from .user import User
    from .discussion import Discussion
    from .reply_like import ReplyLike

class Reply(Base):
    __tablename__ = "replies"
    __table_args__ = (
        Index("idx_replies_user_sort",
              "author_id",
              text("created_at DESC"),
              text("id DESC"),
    ),)

    id: Mapped[int] = mapped_column(primary_key=True)
    content: Mapped[str] = mapped_column(Text, nullable=False)
    is_edited: Mapped[bool] = mapped_column(default=False, nullable=False)
    like_count: Mapped[int] = mapped_column(Integer, default=0, nullable=False)
    
    discussion_id: Mapped[int] = mapped_column(
        ForeignKey("discussions.id", ondelete="CASCADE"),
        nullable=False,
        index=True
    )

    author_id: Mapped[int] = mapped_column(
        ForeignKey("users.id", ondelete="SET NULL"),
        nullable=True,
        index=True
    )

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

    discussion: Mapped["Discussion"] = relationship(
        "Discussion",
        back_populates="replies",
        passive_deletes=True
    )
    author: Mapped["User"] = relationship(
        "User",
        back_populates="replies",
        passive_deletes=True
    )

    likes: Mapped[list["ReplyLike"]] = relationship(
        "ReplyLike",
        back_populates="reply",
        cascade="all, delete-orphan",
        passive_deletes=True
    )