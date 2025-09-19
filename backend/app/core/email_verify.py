# app/core/email_verify.py
import secrets, hashlib, datetime as dt
from fastapi import HTTPException, status
from sqlalchemy import select, insert, update
from sqlalchemy.ext.asyncio import AsyncSession
from app.core.utils import sha256, utcnow
from app.models.user_emal_verification import UserEmailVerification
from app.models.user import User
from sqlalchemy import func

TOKEN_TTL_MIN = 30



async def create_email_verification(db: AsyncSession, user_id: int, email: str):
    email_lower = email.strip().lower()

    # 1) email başka bir kullanıcıda DOĞRULANMIŞ mı?

    q = select(User.id).where(func.lower(User.email) == email_lower)
    if await db.scalar(q):
        raise HTTPException(status.HTTP_400_BAD_REQUEST, "Email already in use")

    # 2) token üret
    token = secrets.token_urlsafe(32)
    token_hash = sha256(token)
    expires_at = utcnow() + dt.timedelta(minutes=TOKEN_TTL_MIN)

    await db.execute(insert(UserEmailVerification).values(
        user_id=user_id,
        email=email,
        email_lower=email_lower,
        token_hash=token_hash,
        expires_at=expires_at,
    ))
    await db.commit()

    return token  # e-postada linke koyacağız
