# from ..core.db import Base

# from datetime import datetime
# from typing import List, Optional
# from sqlalchemy import String, Text, DateTime, func, ForeignKey
# from sqlalchemy.orm import Mapped, mapped_column, relationship
# from typing import TYPE_CHECKING

# if TYPE_CHECKING:
#     from .discussion import Discussion
#     from .user import User

# class DirectMessage(Base):
#     __tablename__ = "direct_messages"

#     id:          Mapped[int]          = mapped_column(primary_key=True)
#     sender_id: Mapped[int] = mapped_column(
#         ForeignKey("users.id", ondelete="CASCADE"),
#         nullable=False,
#         index=True
#     )

#     receiver_id: Mapped[int] = mapped_column(
#         ForeignKey("users.id", ondelete="CASCADE"),
#         nullable=False,
#         index=True
#     )

#     body:       Mapped[str]          = mapped_column(Text, nullable=False)

#     created_at:  Mapped[datetime] = mapped_column(
#         DateTime(timezone=True), server_default=func.now(), nullable=False
#     )

#     # İlişkiler

#     sender: Mapped["User"] = relationship(
#         "User",
#         foreign_keys=[sender_id],
#         back_populates="sent_messages",
#         passive_deletes=True
#         )
    
#     receiver: Mapped["User"] = relationship(
#         "User",
#         foreign_keys=[receiver_id],
#         back_populates="received_messages",
#         passive_deletes=True
#         )
