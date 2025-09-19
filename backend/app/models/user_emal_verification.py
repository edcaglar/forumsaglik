# app/models/user_identity.py
from sqlalchemy.orm import Mapped, mapped_column, validates
from sqlalchemy import BigInteger, Index, String, ForeignKey, DateTime, func, text
from app.core.db import Base
from datetime import datetime

class UserEmailVerification(Base):
    __tablename__ = "user_email_verifications"
    id: Mapped[int] = mapped_column(BigInteger, primary_key=True)
    user_id: Mapped[int] = mapped_column(ForeignKey("users.id", ondelete="CASCADE"), nullable=False)
    email: Mapped[str] = mapped_column(String(255), nullable=False, index=True) # Kulaniciya gosterim icin
    email_lower: Mapped[str] = mapped_column(String(255), nullable=False) # Karsilastirma icin

    created_at: Mapped = mapped_column(DateTime(timezone=True), server_default=func.now(), nullable=False)
    token_hash: Mapped[str] = mapped_column(String(128), nullable=False)  # SHA-256 hex
    expires_at: Mapped[datetime] = mapped_column(DateTime(timezone=True), nullable=False)
    used_at: Mapped[datetime | None] = mapped_column(DateTime(timezone=True))
    created_at: Mapped[datetime] = mapped_column(DateTime(timezone=True), server_default=func.now(), nullable=False)

    # İsteğe bağlı ilişki
    # user: Mapped["User"] = relationship(back_populates="email_verifications")

    __table_args__ = (
        # Aynı anda tek bekleyen talep: email_lower UNIQUE sadece used_at IS NULL iken
        Index(
            "uq_uem_email_lower_pending",
            "email_lower",
            unique=True,
            postgresql_where=text("used_at IS NULL"),
        ),
        Index("idx_uem_user_id", "user_id"),
    )

    @validates("email")
    def _set_email_lower(self, key, value: str):
        # normalize → trim + lower; istersen IDN/Punycode dönüştürmesini de burada yapabilirsin
        v = (value or "").strip()
        self.email_lower = v.lower()
        return v