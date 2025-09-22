from hashlib import sha256
from fastapi import APIRouter, Depends, HTTPException, status, Request, Response, Form
from sqlalchemy import func, select
from sqlalchemy.ext.asyncio import AsyncSession
from  fastapi.responses import JSONResponse, RedirectResponse
from fastapi import BackgroundTasks
# app
from app.api.deps import UserDep, DbSession
from app.core.settings import settings
from app.core.auth import hash_password, verify_password, create_or_rotate_session, destroy_session
from app.core.db import async_get_db
from app.core.utils import utcnow
from app.db.crud.user import create_user, get_user_by_username, get_verified_user_by_email
from app.api.schemas.user import UserCreate, UserLogIn, UserOut, UserVerify
from app.core.email_verify import create_email_verification
from app.models.user import User
from app.models.user_emal_verification import UserEmailVerification
from app.services.email_resend import send_verification_email


router = APIRouter(prefix="/auth", tags=["auth"])

@router.post("/register", response_model=UserOut, status_code=status.HTTP_201_CREATED)
async def register(
    user_in: UserCreate,
    db: DbSession,
    bg: BackgroundTasks,
):

    # Validation
    validation_errors = {}
    email_exists = await get_verified_user_by_email(db, user_in.email)
    username_exists = await get_user_by_username(db, user_in.username)    
    if email_exists: validation_errors["email"] = "Email already in use"
    if username_exists: validation_errors["username"] = "Username already in use"
    
    if validation_errors:
        raise HTTPException(
        status_code=409,
        detail={
            "code": "CONFLICT",
            "message": "Bazı alanlar benzersiz değil.",
            "errors": validation_errors,
        },
        )
    
    user = await create_user(
        db,
        email=None, #email sonradan doğrulanacak
        password=hash_password(user_in.password),
        name=user_in.name,
        surname=user_in.surname,
        username  =user_in.username
    )

    token = await create_email_verification(db=db, user_id=user.id, email=user_in.email)
    bg.add_task(send_verification_email,
                token=token,
                to=user_in.email,
                subject="E-postanı doğrula",)
    return user

@router.get("/verify-email")
async def verify_email(token: str, db: DbSession):
    token_hash = sha256(token.encode('utf-8')).hexdigest()
    rec = await db.scalar(
        select(UserEmailVerification).where(UserEmailVerification.token_hash == token_hash)
    )

    # 1) Geçersiz / süresi dolmuş / zaten kullanılmış
    if not rec or rec.used_at or rec.expires_at < utcnow():
        return RedirectResponse(
            url=f"{settings.PUBLIC_APP_ORIGIN}login?verify=invalid",
            status_code=303,  # See Other: GET tekrar POST’a dönüşmesin
        )

    # 2) E-posta zaten doğrulanmış bir kullanıcıda
    exists = await db.scalar(
        select(User.id).where(func.lower(User.email) == rec.email_lower)
    )
    if exists:
        return RedirectResponse(
            url=f"{settings.PUBLIC_APP_ORIGIN}login?verify=already",
            status_code=303,
        )

    # 3) Kullanıcıyı doğrula
    user = await db.get(User, rec.user_id)
    if getattr(user, "email_verified", False):
        # (teorik durum) kullanıcının kendisi zaten verified ise
        return RedirectResponse(
            url=f"{settings.PUBLIC_APP_ORIGIN}login?verify=already",
            status_code=303,
        )

    user.email = rec.email
    user.email_verified = True
    rec.used_at = utcnow()
    await db.commit()

    return RedirectResponse(
        url=f"{settings.PUBLIC_APP_ORIGIN}login?verify=success",
        status_code=303,
    )

@router.post("/login", response_model=UserOut)
async def login(
    request: Request,
    response: Response,
    db: DbSession,
    user_in: UserLogIn
):
    user = await get_verified_user_by_email(db, user_in.email)
    if not user or not verify_password(user_in.password, user.password):
        raise HTTPException(401, "Invalid credentials")
    
    if user.email_verified is False:
        # FE bu kodu yakalayıp toast gösterir
        raise HTTPException(
            status.HTTP_403_FORBIDDEN,
            detail={"code": "EMAIL_NOT_VERIFIED", "message": "Lütfen önce e-postanızı doğrulayın."},
        )
    
    await create_or_rotate_session(request, response, user.id)
    return user

@router.get("/verify-session", response_model=UserVerify)
async def verify_session(current_user: UserDep):
    """
    Verify if user's session is valid and return user info
    Uses the current_user dependency which already checks session validity
    """
    return current_user


@router.post("/logout", status_code=status.HTTP_204_NO_CONTENT)
async def logout(
    request: Request,
    response: Response,
    current_user: UserDep  # sadece login olmuş kullanıcı çağırabilir
):
    await destroy_session(request, response)
    response.status_code = status.HTTP_204_NO_CONTENT
    return {"message": "Logged out successfully"}
