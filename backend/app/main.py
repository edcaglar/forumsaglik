from app.jobs.scheduler import start_scheduler
import app.models # DB de tablolarin olusmasi icin
from app.core.db import async_engine, Base
from app.api.routes import auth, auth_google, categories, discussions, subcategories, users, replies, search
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

app = FastAPI(lifespan=lifespan)

origins = [
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
app.include_router(auth.router)
app.include_router(categories.router)
app.include_router(discussions.router)
app.include_router(users.router)
app.include_router(subcategories.router)
app.include_router(replies.router)
app.include_router(auth_google.router)
app.include_router(search.router)


# if __name__ == "__main__":
#     import uvicorn
#     # ssl_context = ssl.SSLContext(ssl.PROTOCOL_TLS_SERVER)
#     # ssl_context.load_cert_chain('certificates/cert.pem', keyfile='certificates/key.pem')
#     uvicorn.run("app.main:app", host="0.0.0.0", port=8000,
#                 ssl_keyfile="certificates/key.pem",
#                 ssl_certfile="certificates/cert.pem",
#                 reload=True)

