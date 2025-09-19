# from sqlalchemy.ext.asyncio import AsyncSession
# from sqlalchemy import case, insert, select, delete, update
# from app.models.reply_like import ReplyLike
# from app.models.reply import Reply


# async def like_reply(db: AsyncSession, user_id: int, reply_id: int) -> int:
#     # insert ... on conflict do nothing for race conditions
#     await db.execute(
#         insert(ReplyLike)
#         .values(user_id=user_id, reply_id=reply_id)
#         .on_conflict_do_nothing(index_elements=["user_id", "reply_id"])
#     )
#     # like_count += 1 ve new like value
#     new_like_count = (
#         await db.execute(
#             update(Reply)
#             .where(Reply.id == reply_id)
#             .values(like_count=Reply.like_count + 1)
#             .returning(Reply.like_count)
#         )
#     ).scalar_one()
#     await db.commit()
#     return new_like_count


# async def unlike_reply(db: AsyncSession, user_id: int, reply_id: int) -> int:
#     await db.execute(
#         delete(ReplyLike).where(
#             ReplyLike.user_id == user_id,
#             ReplyLike.reply_id == reply_id
#         )
#     )
#     # 0'ın altına düşürmeden azalt ve yeni değeri dön
#     new_like_count = (
#         await db.execute(
#             update(Reply)
#             .where(Reply.id == reply_id)
#             .values(
#                 like_count=case(
#                     (Reply.like_count > 0, Reply.like_count - 1),
#                     else_=0
#                 )
#             )
#             .returning(Reply.like_count)
#         )
#     ).scalar_one()
#     await db.commit()
#     return new_like_count


# async def toggle_like(db: AsyncSession, user_id: int, reply_id: int):
#     existing_like = (
#         await db.execute(
#             select(ReplyLike).where(
#                 ReplyLike.user_id == user_id,
#                 ReplyLike.reply_id == reply_id
#             )
#         )
#     ).scalar_one_or_none()

#     if existing_like:
#         like_count = await unlike_reply(db, user_id, reply_id)  # <-- await
#         return False, like_count
#     else:
#         like_count = await like_reply(db, user_id, reply_id)    # <-- await
#         return True, like_count

