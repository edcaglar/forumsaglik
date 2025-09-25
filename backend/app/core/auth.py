import secrets
from passlib.context import CryptContext
from fastapi import HTTPException, Request, Response, Depends
from app.core.settings import settings
from sqlalchemy.ext.asyncio import AsyncSession
from app.core.db import async_get_db
from app.models.user import User

from redis.asyncio import Redis, ConnectionPool

pwd_context = CryptContext(schemes=["bcrypt"], deprecated="auto")
# redis = Redis.from_url(settings.REDIS_URL, encoding="utf-8", decode_responses=True)
redis_pool = ConnectionPool.from_url(settings.REDIS_URL, encoding="utf-8", 
                                     decode_responses=True,
                                     max_connections=10)
redis = Redis(connection_pool=redis_pool)



def hash_password(password: str) -> str:
    return pwd_context.hash(password)

def verify_password(plain: str, hashed: str) -> bool:
    return pwd_context.verify(plain, hashed)

async def create_or_rotate_session(request: Request | None, 
                                   response: Response, 
                                   user_id: int):
    
    if request:
        old_id = request.cookies.get(settings.COOKIE_NAME)
        if old_id:
            try:
                await redis.delete(old_id)
            except Exception as e:
                print(f"Eski session silme hatasi: {e}")

    session_id = secrets.token_urlsafe(48)
    await redis.set(session_id, user_id, ex=settings.SESSION_EXPIRE_SECONDS)


    # Cookie’ye yaz
    response.set_cookie(
        key=settings.COOKIE_NAME,
        value=session_id,
        httponly=True,
        secure=settings.COOKIE_SECURE,
        samesite=settings.COOKIE_SAMESITE,
        max_age=settings.SESSION_EXPIRE_SECONDS,
        path="/",
        domain=settings.COOKIE_DOMAIN or None
    )
    return session_id

async def destroy_session(request: Request, response: Response):
    session_id = request.cookies.get(settings.COOKIE_NAME)
    if session_id:
        await redis.delete(session_id)
    response.delete_cookie(key=settings.COOKIE_NAME,
                           domain=settings.COOKIE_DOMAIN or None,
                           httponly=True,
                           secure=settings.COOKIE_SECURE,
                            samesite=settings.COOKIE_SAMESITE,
                           path="/")

