# from typing import List, Annotated
# from fastapi import APIRouter, Depends, HTTPException, status
# from sqlalchemy import select, case, or_, func
# from sqlalchemy.ext.asyncio import AsyncSession

# from app.api.deps import UserDep, DbSession, SkipParam, LimitParam
# from app.models.user import User
# from app.models.direct_message import DirectMessage
# from app.api.schemas.direct_message import DirectMessageCreate, DirectMessageRead
# from app.api.schemas.user import UserRead  # assuming you have a UserRead schema

# router = APIRouter(prefix="/direct_messages", tags=["direct_messages"])


# @router.post(
#     "/",
#     response_model=DirectMessageRead,
#     status_code=status.HTTP_201_CREATED,
#     summary="Send a direct message"
# )
# async def send_message(
#     payload: DirectMessageCreate,
#     current_user: UserDep,
#     db: DbSession,
# ):
#     # alıcı validasyonu
#     receiver = await db.get(User, payload.receiver_id)
#     if not receiver:
#         raise HTTPException(
#             status_code=status.HTTP_404_NOT_FOUND,
#             detail="Receiver not found"
#         )

#     dm = DirectMessage(
#         sender_id=current_user.id,
#         receiver_id=payload.receiver_id,
#         body=payload.body
#     )
#     db.add(dm)
#     await db.commit()
#     await db.refresh(dm)
#     return dm


# @router.get(
#     "/conversations",
#     response_model=List[UserRead],
#     status_code=status.HTTP_200_OK,
#     summary="List your conversation partners, newest first"
# )
# async def list_conversations(
#     current_user: UserDep,
#     db: DbSession,
#     skip:  SkipParam   = 0,
#     limit: LimitParam  = 10,
# ):
#     # partner_id sütunu: mesajı gönderen ya da alan karşı taraf
#     partner_id = case(
#         (DirectMessage.sender_id == current_user.id, DirectMessage.receiver_id),
#         else_=DirectMessage.sender_id
#     ).label("partner_id")

#     # her partner için en son mesaj zamanını al
#     subq = (
#         select(
#             partner_id,
#             func.max(DirectMessage.created_at).label("last_message_at")
#         )
#         .where(
#             or_(
#                 DirectMessage.sender_id == current_user.id,
#                 DirectMessage.receiver_id == current_user.id
#             )
#         )
#         .group_by(partner_id)
#         .subquery()
#     )

#     # partner kullanıcıları, en güncel mesaja göre sırala
#     stmt = (
#         select(User)
#         .join(subq, User.id == subq.c.partner_id)
#         .order_by(subq.c.last_message_at.desc())
#         .offset(skip)
#         .limit(limit)
#     )
#     result = await db.execute(stmt)
#     return result.scalars().all()


# @router.get(
#     "/conversations/{receiver_id}",
#     response_model=List[DirectMessageRead],
#     status_code=status.HTTP_200_OK,
#     summary="Get message history with a specific user (oldest→newest)"
# )
# async def get_conversation_history(
#     current_user:  UserDep,
#     db:             DbSession,
#     receiver_id: int,
#     skip:          SkipParam   = 0,
#     limit:         LimitParam  = 50,
# ):

#     receiver = await db.get(User, receiver_id)
#     if not receiver:
#         raise HTTPException(
#             status_code=status.HTTP_404_NOT_FOUND,
#             detail="User not found"
#         )

#     stmt = (
#         select(DirectMessage)
#         .where(
#             or_(
#                 (DirectMessage.sender_id == current_user.id)  & (DirectMessage.receiver_id == receiver_id),
#                 (DirectMessage.sender_id == receiver_id) & (DirectMessage.receiver_id == current_user.id)
#             )
#         )
#         .order_by(DirectMessage.created_at.asc())
#         .offset(skip)
#         .limit(limit)
#     )
#     result = await db.execute(stmt)
#     return result.scalars().all()
