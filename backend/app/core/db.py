from sqlalchemy.orm import DeclarativeBase
from sqlalchemy.ext.asyncio import create_async_engine, async_sessionmaker 
from sqlalchemy.ext.asyncio.session import AsyncSession
from typing import AsyncGenerator

from app.core.settings import settings

class Base(DeclarativeBase):
    pass

async_engine = create_async_engine(
    settings.DATABASE_URL,
    echo=False, # sql loglari gormek icin true
    pool_pre_ping=True,
    future=True
    )

local_session = async_sessionmaker(bind=async_engine,
                                   class_=AsyncSession,
                                   expire_on_commit=False,
                                   autoflush=False
                                   )


async def async_get_db() -> AsyncGenerator[AsyncSession, None]:
    async with local_session() as db:
        yield db



