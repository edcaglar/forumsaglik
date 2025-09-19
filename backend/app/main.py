from app.jobs.scheduler import start_scheduler
import app.models # DB de tablolarin olusmasi icin
from app.core.db import async_engine, Base
from app.api.routes import auth, auth_google, categories, discussions, subcategories, users, replies, search , healthcheck
from starlette.middleware.sessions import SessionMiddleware
from app.core.settings import settings
from contextlib import asynccontextmanager
from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from app.core.auth import redis, redis_pool

@asynccontextmanager
async def lifespan(app: FastAPI):
    # Startup
    try:
        start_scheduler()
    except Exception as e:
        print(f"Scheduler baslatma hatasi: {e}")
    yield
    # Shutdown
    try:
        await redis.close()
    except Exception as e:
        print(f"Redis kapatma hatası: {e}")
    try:
        await redis_pool.disconnect()
    except Exception as e:
        print(f"Redis pool kapatma hatası: {e}")

app = FastAPI(lifespan=lifespan,
              title="ForumSağlık API",
              description="ForumSağlık platformu için RESTful API",
              version="1.0.0",
              docs_url="/api/docs" if settings.DEBUG else None,
              redoc_url="/api/redoc" if settings.DEBUG else None,
              openapi_url="/api/openapi.json" if settings.DEBUG else None)

origins = [
    ############# PROD ################
    "https://forumsaglik.com",
    "https://www.forumsaglik.com",
    "https://app.forumsaglik.com",
    "https://www.app.forumsaglik.com",
    ############# DEV #################
    "http://localhost:3000",
    "https://localhost:3000",
    "http://127.0.0.1:3000",
    "https://127.0.0.1:3000"
]

# Middlewares
app.add_middleware(
    CORSMiddleware
    , allow_origins=origins,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"]
    )
app.add_middleware(
    SessionMiddleware,
    secret_key=settings.OAUTH_SESSION_SECRET,
    session_cookie=settings.OAUTH_COOKIE_NAME,
    same_site="lax",
    https_only=settings.COOKIE_SECURE,
)

# Routers
app.include_router(healthcheck.router)  # Health check için boş bir router ekliyoruz
app.include_router(auth.router)
app.include_router(categories.router)
app.include_router(discussions.router)
app.include_router(users.router)
app.include_router(subcategories.router)
app.include_router(replies.router)
app.include_router(auth_google.router)
app.include_router(search.router)

