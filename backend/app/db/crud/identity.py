# app/db/crud/identity.py
from sqlalchemy import select
from sqlalchemy.dialects.postgresql import insert
from app.api.deps import DbSession
from app.models.user_identity import UserIdentity
from app.models.user import User


async def get_user_by_identity(db: DbSession, provider: str, sub: str) -> User | None:
    q = (
        select(User)
        .join(UserIdentity, UserIdentity.user_id == User.id)
        .where(UserIdentity.provider == provider, UserIdentity.provider_sub == sub)
    )
    return (await db.scalar(q))

async def link_identity(db: DbSession, user_id: int, provider: str, sub: str) -> None:
    await db.execute(
        insert(UserIdentity).values(user_id=user_id,
                                    provider=provider,
                                    provider_sub=sub)
                                    .on_conflict_do_nothing(
                                        index_elements=[UserIdentity.provider,
                                                        UserIdentity.provider_sub])
    )
    await db.commit()
