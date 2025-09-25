from base64 import b64decode, b64encode
from datetime import datetime
from typing import List, Annotated, Optional
from fastapi import APIRouter, Body, Depends, Request, Response, status, Query, HTTPException
from sqlalchemy import Integer, func, literal, null, select, update
from sqlalchemy.ext.asyncio import AsyncSession
from sqlalchemy.orm import joinedload
from app.api.deps import DbSession, SkipParam, LimitParam, UserDep
from app.api.schemas.activity import ActivityPage
from app.api.schemas.discussion import DiscussionRead
from app.api.schemas.profile import ProfileDiscussionPage, ProfileReplyPage
from app.api.schemas.reply import ReplyRead
from app.api.schemas.user import UserCore, UserSecurityOut, UserStats, UserUpdateIn
from app.core.auth import destroy_session, hash_password, verify_password
from app.core.utils import decode_cursor, encode_cursor
from app.models.category import Category
from app.models.discussion import Discussion
from app.models.reply import Reply
from app.models.user import User
from sqlalchemy.exc import IntegrityError
from app.core.auth import redis

router = APIRouter(prefix="/users", tags=["users"])

@router.get("/me",
            response_model=UserCore,
            status_code=status.HTTP_200_OK,
            summary="Get core user info of current user"
            )
async def get_current_user_core(
    current_user: UserDep,
):
    return current_user

@router.get(
    "/{user_id}/activity",
    response_model=ActivityPage,
    summary="Get activities (discussions and replies) by user",
)
async def get_user_activity(
    user_id: int,
    db: DbSession,
    current_user: UserDep,
    limit: int = 10,
    cursor: str | None = None,
):
    # cursor decode
    cur_ts = cur_id = None
    if cursor:
        cur_ts, cur_id = decode_cursor(cursor)

    # Discussions
    discussion_q = (
        select(
            literal("discussion").label("kind"),
            Discussion.id.label("item_id"),
            Discussion.created_at.label("ts"),
            Discussion.title.label("title"),
            null().cast(Integer).label("discussion_id"),
        )
        .where(Discussion.author_id == user_id)
    )

    # Replies (title = snippet)
    reply_q = (
        select(
            literal("reply").label("kind"),
            Reply.id.label("item_id"),
            Reply.created_at.label("ts"),
            func.substr(Reply.content, 1, 140).label("title"),
            Reply.discussion_id.label("discussion_id"),
        )
        .where(Reply.author_id == user_id)
    )

    # Keyset filtresi iki select'e de uygula
    if cur_ts and cur_id:
        discussion_q = discussion_q.where(
            (Discussion.created_at < cur_ts)
            | ((Discussion.created_at == cur_ts) & (Discussion.id < cur_id))
        )
        reply_q = reply_q.where(
            (Reply.created_at < cur_ts)
            | ((Reply.created_at == cur_ts) & (Reply.id < cur_id))
        )

    # UNION ALL → subquery → ORDER BY ts,item_id DESC → LIMIT+1
    union_subq = discussion_q.union_all(reply_q).subquery("t")

    stmt = (
        select(
            union_subq.c.kind,
            union_subq.c.item_id,
            union_subq.c.ts,
            union_subq.c.title,
            union_subq.c.discussion_id,
        )
        .order_by(union_subq.c.ts.desc(), union_subq.c.item_id.desc())
        .limit(limit + 1)
    )

    result = await db.execute(stmt)
    rows = result.mappings().all()

    # next_cursor hesapla (limit+1 tekniği)
    next_cursor = None
    if len(rows) > limit:
        last = rows[limit - 1]
        next_cursor = encode_cursor(last_ts=last['ts'], last_id=last['item_id'])
        rows = rows[:limit]

    # Pydantic'e dök
    items = [
        {
            "kind": r["kind"],
            "item_id": r["item_id"],
            "ts": r["ts"],
            "title": r["title"],
            "discussion_id": r["discussion_id"],
        }
        for r in rows
    ]

    return {"items": items, "meta": {"next_cursor": next_cursor}}


@router.get(
    "/{user_id}/discussions",
    response_model=ProfileDiscussionPage,
    summary="Get discussions by user_id",
)
async def get_discussions_by_user_id(
    user_id: int,
    db: DbSession,
    current_user: UserDep,
    limit: int = 10,
    cursor: str | None = None,
):
    # cursor decode
    cur_ts = cur_id = None
    if cursor:
        cur_ts, cur_id = decode_cursor(cursor)
        
    stmt = (select(Discussion)
             .options(joinedload(Discussion.category).load_only(Category.title))
             .where(Discussion.author_id == user_id)
             .order_by(Discussion.created_at.desc(), Discussion.id.desc())
             .limit(limit + 1))

    if cur_ts and cur_id:
        stmt = stmt.where(
        (Discussion.created_at < cur_ts)
        | ((Discussion.created_at == cur_ts) & (Discussion.id < cur_id))
    )

    result = await db.execute(stmt)
    rows = result.scalars().all()

    # next_cursor hesapla (limit+1 tekniği)
    next_cursor = None
    if len(rows) > limit:
        last = rows[limit - 1]
        next_cursor = b64encode(
            f"{last.created_at.isoformat()}|{last.id}".encode()
        ).decode()
        rows = rows[:limit]

    # Pydantic'e dök
    items = [
        {
            "id": d.id,
            "title": d.title,
            "excerpt": d.content[:70],
            "category": d.category.title,
            "reply_count": d.reply_count,
            "view_count": d.view_count,
            "created_at": d.created_at
        }
        for d in rows
    ]

    return {"items": items, "meta": {"next_cursor": next_cursor}}


@router.get(
    "/{user_id}/replies",
    response_model=ProfileReplyPage,
    summary="Get replies by user_id",
)
async def get_replies_by_user_id(
    user_id: int,
    db: DbSession,
    current_user: UserDep,
    limit: int = 10,
    cursor: str | None = None,
):
    # cursor decode
    cur_ts = cur_id = None
    if cursor:
        cur_ts, cur_id = decode_cursor(cursor)
        
    stmt = (select(Reply)
             .options(joinedload(Reply.discussion).load_only(Discussion.id, Discussion.title)
                      .joinedload(Discussion.category).load_only(Category.title))
             .where(Reply.author_id == user_id)
             .order_by(Reply.created_at.desc(), Reply.id.desc())
             .limit(limit + 1))

    if cur_ts and cur_id:
        stmt = stmt.where(
        (Reply.created_at < cur_ts)
        | ((Reply.created_at == cur_ts) & (Reply.id < cur_id))
    )

    result = await db.execute(stmt)
    rows = result.scalars().all()

    # next_cursor hesapla (limit+1 tekniği)
    next_cursor = None
    if len(rows) > limit:
        last = rows[limit - 1]
        next_cursor = b64encode(
            f"{last.created_at.isoformat()}|{last.id}".encode()
        ).decode()
        rows = rows[:limit]

    # Pydantic'e dök
    items = [
        {
            "id": r.id,
            "content": r.content[:70],
            "discussion_id": r.discussion.id,
            "discussion_title": r.discussion.title,
            "category": r.discussion.category.title,
            "like_count": r.like_count,
            "created_at": r.created_at
        }
        for r in rows
    ]

    return {"items": items, "meta": {"next_cursor": next_cursor}}


@router.get("/{username}/core"
            ,response_model=UserCore,
            status_code=status.HTTP_200_OK,
            summary="Get core user info by username"
            )
async def get_user_core_by_username(
    username: str,
    db: DbSession,
    current_user: UserDep,
):

    stmt = select(User).where(User.username == username)
    result = await db.execute(stmt)
    user = result.scalar_one_or_none()
    if not user:
        raise HTTPException(status_code=404, detail="User not found")
    return user




@router.patch("/me",
              response_model=UserCore,
               status_code=status.HTTP_200_OK,
    summary="Update current user"
    )
async def update_current_user_core(
    current_user: UserDep,
    db: DbSession,
    payload: UserUpdateIn
):
    payload_dict = payload.model_dump(exclude_unset=True)
    stmt = (
        update(User)
        .where(User.id == current_user.id)
        .values(payload_dict)
    )
    try:
        await db.execute(stmt)
        await db.commit()
    except IntegrityError:
        await db.rollback()
        # Örn. unique constraint violation
        raise HTTPException(status_code=409, detail="Username already taken")
    except Exception as e:
        await db.rollback()
        raise HTTPException(status_code=500, detail="An error occurred while updating the profile")
    
    # 7) En güncel değerleri almak için refresh et ve döndür
    await db.refresh(current_user)
    return current_user   

@router.get("/{username}/stats",
    response_model=UserStats,
    status_code=status.HTTP_200_OK,
    summary="Get user stats  by user id"
)
async def get_user_stats_by_username(
    username: str,
    db: DbSession,
    current_user: UserDep,
):
    # Kullanıcıyı bul
    stmt = select(User).where(User.username == username)
    result = await db.execute(stmt)
    user = result.scalar_one_or_none()
    if not user:
        raise HTTPException(status_code=404, detail="User not found")

    # Tartışma sayısını hesapla
    discussion_count_stmt = select(func.count(Discussion.id)).where(Discussion.author_id == user.id)
    result = await db.execute(discussion_count_stmt)
    discussion_count = result.scalar_one()

    # Yanıt sayısını hesapla
    reply_count_stmt = select(func.count(Reply.id)).where(Reply.author_id == user.id)
    result = await db.execute(reply_count_stmt)
    reply_count = result.scalar_one()

    return UserStats(
        discussion_count=discussion_count,
        reply_count=reply_count
    )


@router.delete("/me",
               status_code=status.HTTP_204_NO_CONTENT,
    summary="Delete current user"
    )
async def delete_current_user(
    request: Request,
    response: Response,
    db: DbSession,
    current_user: UserDep,
):
    try:
        await db.delete(current_user)
        await db.commit()
    except IntegrityError:
        # Örn. foreign-key RESTRICT gibi durumlar
        raise HTTPException(status_code=409, detail="Account cannot be deleted due to related records.")
    
    await destroy_session(request, response)
    return {"message": "Deleted successfully"}

@router.put(
    "/me/password",
    status_code=status.HTTP_204_NO_CONTENT,
    summary="Change password of current user",
)
async def change_password_current_user(
    request: Request,
    response: Response,
    db: DbSession,
    current_user: UserDep,
    current_password: Annotated[Optional[str], Body(embed=True, alias="currentPassword")] = None,
    new_password: Annotated[str, Body(..., embed=True, alias="newPassword")] = ...,
    sign_out_other_sessions: Annotated[bool, Body(embed=True, alias="signOutOtherSessions")] = False,
):
    """
    - Eğer kullanıcının mevcut bir şifresi varsa: currentPassword zorunlu ve doğrulanır.
    - Eğer Google-only ise (user.password boş/None): currentPassword gerekmeksizin yeni şifre SET edilir.
    """

    # Kullanıcının şifresi var mı?
    has_password = bool(getattr(current_user, "password", None))

    if has_password:
        # 1) current şifre zorunlu
        if not current_password:
            raise HTTPException(
                status_code=400,
                detail={"code": "CURRENT_PASSWORD_REQUIRED", "message": "Current password is required."},
            )
        # 2) current şifre doğrulaması
        if not verify_password(current_password, current_user.password):
            raise HTTPException(
                status_code=403,
                detail={"code": "INCORRECT_PASSWORD", "message": "Incorrect password"},
            )
        # 3) aynı şifre kontrolü (double-hash hatası yok!)
        #    - ya düz string karşılaştırması
        if new_password == current_password:
            raise HTTPException(
                status_code=400,
                detail={"code": "SAME_PASSWORD", "message": "New password cannot be the same as the current password"},
            )
        #    - ya da mevcut hash'e karşı verify
        if verify_password(new_password, current_user.password):
            raise HTTPException(
                status_code=400,
                detail={"code": "SAME_PASSWORD", "message": "New password cannot be the same as the current password"},
            )
    else:
        # Google-only → direkt set et (opsiyonel: reauth şartı koymak istersen burada kontrol et)
        # örn: if not request.state.session.get("fresh_until") ...: raise HTTPException(403, {"code":"REAUTH_REQUIRED", ...})
        pass

    # Şifreyi KAYDET (double hash YOK)
    current_user.password = hash_password(new_password)

    try:
        await db.commit()
    except Exception:
        await db.rollback()
        raise HTTPException(status_code=500, detail="An error occurred while changing the password")

    # Diğer oturumları kapat (mevcut oturumu açık bırak)
    # if sign_out_other_sessions:
    #     await revoke_other_sessions(request, current_user.id)
        # Eğer set'li çözümü kurmadıysan:
        # await revoke_other_sessions_fallback_scan(request, current_user.id)

    # 204 No Content
    return Response(status_code=status.HTTP_204_NO_CONTENT)



@router.get(
    "/me/security",
    response_model=UserSecurityOut,
    response_model_by_alias=True,
    status_code=status.HTTP_200_OK,
    summary="Get security status of current user",
)
async def get_my_security(
    current_user: UserDep,
    db: DbSession,
):
    providers: list[str] = []

    # password var mı?
    has_password = bool(getattr(current_user, "password", None))
    if has_password:
        providers.append("password")

    # Google provider var mı? (modeline göre değiştir)
    # Örn. users tablosunda google_id veya google_sub varsa:
    if getattr(current_user, "google_id", None) or getattr(current_user, "google_sub", None):
        providers.append("google")

    # Eğer user_identities gibi ayrı bir tablo kullanıyorsan burada sorgula:
    # rows = await db.execute(select(UserIdentity.provider).where(UserIdentity.user_id == current_user.id))
    # providers = [r[0] for r in rows]

    return UserSecurityOut(hasPassword=has_password, providers=providers)