from hashlib import sha256
from fastapi import APIRouter, Depends, HTTPException, status, Request, Response, Form
from sqlalchemy import func, select
from  fastapi.responses import RedirectResponse
from fastapi import BackgroundTasks
# app
from app.api.deps import UserDep, DbSession
from app.core.settings import settings
from app.core.auth import hash_password, verify_password, create_or_rotate_session, destroy_session
from app.core.db import async_get_db
from app.core.utils import utcnow
from app.db.crud.user import create_user, get_user_by_username, get_verified_user_by_email
from app.api.schemas.user import UserCreate, UserLogIn, UserOut, UserVerify
from app.models.user import User
from app.models.user_emal_verification import UserEmailVerification
from app.services.email_resend import send_verification_email
from app.services.auth import create_email_verification_token, get_pending_verification

router = APIRouter(prefix="/auth", tags=["auth"])

@router.post("/register", response_model=UserOut, status_code=status.HTTP_201_CREATED)
async def register(
    user_in: UserCreate,
    db: DbSession,
    bg: BackgroundTasks,
):
    email_raw = (user_in.email or "").strip()
    email_l = email_raw.lower()

    # 1) Username çakışmasını baştan kontrol et (daha iyi UX)
    if await get_user_by_username(db, user_in.username):
        raise HTTPException(
            status_code=409,
            detail={"code": "CONFLICT", "errors": {"username": "Username already in use"}}
        )

    # 2) ZATEN DOĞRULANMIŞ kullanıcı var mı? (users.email yalnız doğrulamada set ediliyor)
    verified_user = await get_verified_user_by_email(db, email_raw)
    
    if verified_user:
        raise HTTPException(
            status_code=409,
            detail={"code": "CONFLICT", "errors": {"email": "Email already in use"}}
        )

    # 3) PENDING token var mı? (UserEmailVerification üzerinden bak)
    pending = await get_pending_verification(db, email_lower=email_l)

    if pending:
        # İlgili user'ı çek
        owner = await db.scalar(select(User).where(User.id == pending.user_id))
        # Delete old user
        if owner:
            await db.delete(owner)
            await db.commit()
        # Delete old pending verifications
        await db.delete(pending)
        await db.commit()


        token = await create_email_verification_token(db, user=owner, email=email_raw)
        bg.add_task(send_verification_email, to=email_raw, token=token)
        return owner


    # 4) Hiçbiri yok → yeni user oluştur (email=None), token çıkar & gönder
    new_user = await create_user(
        db,
        email=None,  # doğrulanınca yazılacak
        password=hash_password(user_in.password),
        name=user_in.name,
        surname=user_in.surname,
        username=user_in.username,
    )
    token = await create_email_verification_token(db, user=new_user, email=email_raw)
    bg.add_task(send_verification_email, to=email_raw, token=token)
    return new_user

@router.get("/verify-email")
async def verify_email(token: str, db: DbSession):
    token_hash = sha256(token.encode('utf-8')).hexdigest()
    rec = await db.scalar(
        select(UserEmailVerification).where(UserEmailVerification.token_hash == token_hash)
    )
    print("Verification record:", rec)
    print("token", token)
    print(token_hash)
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
