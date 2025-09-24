
from datetime import timedelta
import secrets
from typing import Optional , Tuple

from sqlalchemy import and_, update, select
from app.api.deps import DbSession
from app.core.utils import sha256, utcnow
from app.models.user import User
from app.models.user_emal_verification import UserEmailVerification
from app.services.email_resend import send_verification_email

# ---- helpers ---------------------------------------------------------------


def normalize_email_lower(email: str) -> str:
    return (email or "").strip().lower()

def generate_token_pair() -> Tuple[str, str]:
    """
    Dönüş:
      raw_token: kullanıcıya gönderilecek ham token (URL'e konur)
      token_hash: DB'de tutulacak SHA-256 hex
    """
    token = secrets.token_urlsafe(32)
    token_hash = sha256(token)
    return token, token_hash


async def create_email_verification_token(
    db: DbSession,
    user: User,
    email: str,
    token_ttl_minutes: int = 30,
) -> str:
    """
    Yeni doğrulama token'ı oluşturur, DB'ye ekler
    Dönüş: token
    """

    raw, token_hash = generate_token_pair()
    expires_at = utcnow() + timedelta(minutes=token_ttl_minutes)

    uev = UserEmailVerification(
        user_id=user.id,
        email=email,                       # gösterim için
        email_lower=normalize_email_lower(email),
        token_hash=token_hash,
        expires_at=expires_at,
    )
    db.add(uev)
    await db.commit()

    return raw


async def get_pending_verification(
    db: DbSession, email_lower: str
) -> Optional[UserEmailVerification]:
    """
    Son oluşturulan (PENDING) doğrulama kaydını getirir.
    """
    return await db.scalar(
        select(UserEmailVerification).where(
            UserEmailVerification.email_lower == email_lower,
            UserEmailVerification.used_at.is_(None)
        )
        .order_by(UserEmailVerification.created_at.desc())
    )