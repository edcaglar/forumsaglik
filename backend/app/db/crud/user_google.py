# app/db/crud/user_google.py
from sqlalchemy.ext.asyncio import AsyncSession
from app.api.deps import DbSession
from app.db.crud.identity import get_user_by_identity, link_identity
from app.db.crud.user import get_verified_user_by_email, create_user
from app.api.schemas.user import UserCreate  # varsa kullan, yoksa doğrudan alanlarla çağır
from app.db.utils import generate_unique_username
from app.models.user import User

async def upsert_user_with_google(
    db: DbSession,
    sub: str,
    email: str | None,
    email_verified: bool,
    name: str | None,
    picture: str | None,
):
    # 1) Daha önce bağlanmış mı?
    user = await get_user_by_identity(db, "google", sub)
    if user:
        return user

    # 2) Doğrulanmış email'e sahip mevcut kullanıcıya bağla
    if email and email_verified:
        existing = await get_verified_user_by_email(db, email)
        if existing:
            await link_identity(db, existing.id, "google", sub)
            return existing

    # 3) Yeni kullanıcı oluştur
    base_username = (email.split("@")[0] if email else f"user_{sub[:6]}")
    username = await generate_unique_username(db, base_username)

    user = await create_user(
        db,
        email=email,
        password=None,             # password'suz hesap (nullable olmalı)
        name=name or "",
        surname="",
        username=username,
        avatar_url=picture,        # modelinde alan varsa
        email_verified=email_verified if hasattr(User, "email_verified") else None,
    )
    await link_identity(db, user.id, "google", sub)
    return user
