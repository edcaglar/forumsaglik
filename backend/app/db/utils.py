from sqlalchemy import select
from app.models.user import User
from random import randrange
from ulid import ULID
from app.api.deps import DbSession


async def generate_unique_username(db: DbSession, base_username: str) -> str:
    username = base_username

    while True:
        # Check if the username exists
        query = select(User).where(User.username == username)
        result = await db.execute(query)
        existing_user = result.scalar_one_or_none()
        
        if not existing_user:
            return username
        
        # If username exists, change random_str and try again
        random_str = str(randrange(0, 999999))
        username = f"{base_username}{random_str}"

