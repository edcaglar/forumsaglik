# app/db/crud/user.py

from typing import Optional
from sqlalchemy.ext.asyncio import AsyncSession
from sqlalchemy import func, select, update, delete

from app.models.user import User

async def get_user_by_id(db: AsyncSession, user_id: int) -> Optional[User]:
    result = await db.execute(select(User).filter_by(id=user_id))
    return result.scalar_one_or_none()

async def get_verified_user_by_email(db, email: str):
    q = (
        select(User)
        .where(
            User.email.isnot(None),                 # sadece doğrulanmış kayıtlar
            func.lower(User.email) == email.lower()
        )
        .limit(1)
    )
    return await db.scalar(q)

async def get_user_by_username(db: AsyncSession, username: str) -> Optional[User]:
    result = await db.execute(select(User).filter(func.lower(User.username) == username.lower()))
    return result.scalar_one_or_none()

async def create_user(
    db: AsyncSession,
    email: str,
    password: str,
    name: str,
    surname: str,
    username: str,
    avatar_url : Optional[str] = None,
    email_verified: Optional[bool] = None,
) -> User:
    user = User(
        email=email,
        password=password,
        name=name,
        surname=surname,
        username=username,
        avatar_url=avatar_url,
        email_verified=email_verified,
    )
    db.add(user)
    await db.commit()
    await db.refresh(user)
    return user

async def update_user(
    db: AsyncSession,
    user_id: int,
    **kwargs
) -> Optional[User]:
    await db.execute(
        update(User).
        where(User.id == user_id).
        values(**kwargs)
    )
    await db.commit()
    return await get_user_by_id(db, user_id)

async def delete_user(db: AsyncSession, user_id: int) -> None:
    await db.execute(delete(User).where(User.id == user_id))
    await db.commit()
