from ..core.db import Base
from sqlalchemy.orm import Mapped
from sqlalchemy.orm import mapped_column
from sqlalchemy.orm import relationship
from sqlalchemy import Index, String, DateTime, func, ForeignKey
from datetime import datetime
from typing import List, TYPE_CHECKING, Optional
import enum
from sqlalchemy import Enum as SAEnum

if TYPE_CHECKING:
    from .discussion import Discussion
    from .reply import Reply

class UserRole(str, enum.Enum):
    USER      = "user"
    MODERATOR = "moderator"
    ADMIN     = "admin"

class User(Base):
    __tablename__ = "users"


    id: Mapped[int] = mapped_column(primary_key=True)
    email: Mapped[str | None] = mapped_column(String(255), nullable=True)
    email_verified: Mapped[bool] = mapped_column(default=False, nullable=False)
    __table_args__ =( 
        Index("uq_users_email_ci",
              func.lower(email), 
              unique=True, 
              postgresql_where=email.isnot(None),
    ),)
    
    password: Mapped[str] = mapped_column(String(255), nullable=True) # nullable for OAuth users
    name: Mapped[str] = mapped_column(String(30), nullable=False)
    surname: Mapped[str] = mapped_column(String(30), nullable=False)
    username: Mapped[str] = mapped_column(String(30), unique=True, nullable=False)
    bio: Mapped[Optional[str]] = mapped_column(String(255), nullable=True)
    location: Mapped[Optional[str]] = mapped_column(String(100), nullable=True)
    website: Mapped[Optional[str]] = mapped_column(String(100), nullable=True)
    

    # User Avatar, will be stored in s3
    avatar_url: Mapped[Optional[str]]  = mapped_column(String(512), nullable=True)
    avatar_mime: Mapped[Optional[str]] = mapped_column(String(32), nullable=True)
    avatar_width: Mapped[Optional[int]]  = mapped_column(String, nullable=True)
    avatar_height: Mapped[Optional[int]] = mapped_column(String, nullable=True)
    avatar_sha256: Mapped[Optional[str]] = mapped_column(String(64), nullable=True)
    avatar_updated_at: Mapped[Optional[datetime]] = mapped_column(DateTime(timezone=True), nullable=True)

    role: Mapped[UserRole] = mapped_column(
        SAEnum(
            UserRole,
            name="user_role_enum",
            native_enum=True,
            create_type=True,
            values_callable=lambda enum_cls: [e.value for e in enum_cls] # to use lowercase strings in db
        ),
        nullable=False,
        server_default=UserRole.USER.value
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

    discussions: Mapped[List["Discussion"]] = relationship(
        "Discussion",
        back_populates="author",
        cascade="all, delete-orphan"
    )

    replies: Mapped[List["Reply"]] = relationship(
        "Reply",
        back_populates="author",
        cascade="all, delete-orphan"
    )

    # sent_messages: Mapped[List["DirectMessage"]] = relationship(
    #     "DirectMessage",
    #     foreign_keys="[DirectMessage.sender_id]",
    #     back_populates="sender",
    #     cascade="all, delete-orphan"
    # )

    # received_messages: Mapped[List["DirectMessage"]] = relationship(
    #     "DirectMessage",
    #     foreign_keys="[DirectMessage.receiver_id]",
    #     back_populates="receiver",
    #     cascade="all, delete-orphan"
    # )