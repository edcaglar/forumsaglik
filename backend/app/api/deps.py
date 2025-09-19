from fastapi import Depends, HTTPException, Request, status, Query
from sqlalchemy.ext.asyncio import AsyncSession
from typing import Annotated, Optional

from app.core.auth import redis
from app.core.settings import settings
from app.core.db import async_get_db
from app.models.user import User
from app.db.crud.user import get_user_by_id
from app.models.user import UserRole

async def _resolve_user_or_none(request: Request, db: AsyncSession = Depends(async_get_db)) -> Optional[User]:
    session_id = request.cookies.get(settings.COOKIE_NAME)
    if not session_id:
        return None

    user_id = await redis.get(session_id)
    if not user_id:
        return None

    # redis.get() bytes döndürebilir
    if isinstance(user_id, (bytes, bytearray)):
        user_id = user_id.decode()

    user = await get_user_by_id(db, int(user_id))
    return user

# User varsa user yoksa exception atar
async def get_current_user(
    request: Request,
    db: AsyncSession = Depends(async_get_db),
) -> User:
    user = await _resolve_user_or_none(request, db)
    if not user:
        raise HTTPException(status_code=401, detail="Not authenticated")
    return user


# User varsa user yoksa None doner
async def get_optional_user(
    request: Request,
    db: AsyncSession = Depends(async_get_db),
) -> Optional[User]:
    # Hiç hata fırlatmadan User ya da None döner
    return await _resolve_user_or_none(request, db)


def admin_required(user: User = Depends(get_current_user)):
    if user.role != UserRole.ADMIN:
        raise HTTPException(
            status_code=status.HTTP_403_FORBIDDEN,
            detail="Only admins can perform this action"
        )
    return user

# Dependencies
DbSession = Annotated[AsyncSession, Depends(async_get_db)]
UserDep = Annotated[User, Depends(get_current_user)]
OptionalUserDep = Annotated[Optional[User], Depends(get_optional_user)]
AdminDep  = Annotated[User, Depends(admin_required)]


# Pagination
SkipParam     = Annotated[int, Query(ge=0, description="Number of items to skip")]
LimitParam    = Annotated[int, Query(ge=1, le=100, description="Max number of items to return")]