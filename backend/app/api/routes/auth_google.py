# app/api/routes/auth_google.py
from fastapi import APIRouter, Request, Response, Depends
from fastapi.responses import RedirectResponse
from app.core.oidc import oauth
from app.core.settings import settings
from app.api.deps import DbSession
from app.db.crud.user_google import upsert_user_with_google
from app.core.auth import create_or_rotate_session

router = APIRouter(prefix="/auth/google", tags=["auth"])

@router.get("/login")
async def google_login(request: Request):
    redirect_uri = request.url_for("google_callback")
    # prompt, hd (domain kısıtlama) vb. parametreleri burada verebilirsin
    return await oauth.google.authorize_redirect(request, redirect_uri)

@router.get("/callback")
async def google_callback(request: Request, db: DbSession):
    # 1) code -> token; state/nonce doğrulanır
    token = await oauth.google.authorize_access_token(request)

    # 2) userinfo
    userinfo = token.get("userinfo")
    if not userinfo:
        userinfo = await oauth.google.parse_id_token(request, token)

    sub = userinfo["sub"]
    email = userinfo.get("email")
    email_verified = bool(userinfo.get("email_verified", False))
    name = userinfo.get("name")
    picture = userinfo.get("picture")

    # 3) Kullanıcıyı bul/oluştur/bağla
    user = await upsert_user_with_google(db, sub, email, email_verified, name, picture)

    # 4) Kendi session cookie'ni üret + frontend'e yönlendir
    redirect = RedirectResponse(url=str(settings.PUBLIC_APP_ORIGIN) + "login/callback")
    await create_or_rotate_session(request, redirect, user.id)
    return redirect
