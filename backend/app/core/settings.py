# backend/app/settings.py
from pathlib import Path
from typing import Optional
from pydantic_settings import BaseSettings, SettingsConfigDict
from pydantic import AnyUrl

BACKEND_DIR = Path(__file__).resolve().parents[1]      # repo-root/backend
ROOT_DIR    = BACKEND_DIR.parent                       # repo-root

class Settings(BaseSettings):
    # Öncelik sırası: .env.local > .env > backend/.env.production > backend/.env
    # (OS ortam değişkenleri her zaman en yüksek öncelikli)
    model_config = SettingsConfigDict(
        env_file=(
            ROOT_DIR / ".env.local",
            ROOT_DIR / ".env",
            BACKEND_DIR / ".env",
        ),
        env_file_encoding="utf-8",
        extra="ignore",
    )

    DEBUG: bool = True  # lokal için True; prod .env'de False

    # ---------- Postgres (parçalı) ----------
    DB_USER: str = "deniz"
    DB_PASSWORD: str = "1"
    DB_HOST: str = "localhost"
    DB_PORT: int = 5432
    DB_NAME: str = "forumsaglik"
    DATABASE_PREFIX: str = "postgresql+asyncpg"
    DATABASE_URL: Optional[str] = None  # env verildiyse onu kullan

    # ---------- Redis (parçalı) ----------
    REDIS_HOST: str = "localhost"  # Docker'da 'redis'
    REDIS_PORT: int = 6379
    REDIS_DB: int = 0
    REDIS_URL: Optional[str] = None

    # ---------- Uygulama ----------
    SESSION_EXPIRE_SECONDS: int = 7 * 24 * 3600
    COOKIE_NAME: str = "session"
    COOKIE_DOMAIN: str = "localhost"
    COOKIE_SECURE: bool = False  # lokal için False; prod .env'de True

    PUBLIC_APP_ORIGIN: AnyUrl = "http://localhost:3000"
    API_ORIGIN: AnyUrl = "http://localhost:8000"

    # ---------- Uvicorn ----------
    UVICORN_HOST: str = "0.0.0.0"
    UVICORN_PORT: int = 8000

    # ---------- Resend ----------
    RESEND_API_KEY: str = ""
    EMAIL_FROM: str = "noreply@example.com"

    # ---------- Google OAuth ----------
    GOOGLE_CLIENT_ID: str = ""
    GOOGLE_CLIENT_SECRET: str = ""
    OAUTH_SESSION_SECRET: str = "change-me"
    OAUTH_COOKIE_NAME: str = "oauth_session"

    # ---------- Türetilen alanlar ----------
    def model_post_init(self, __ctx) -> None:
        if not self.DATABASE_URL or not self.DATABASE_URL.strip():
            self.DATABASE_URL = (
                f"{self.DATABASE_PREFIX}://"
                f"{self.DB_USER}:{self.DB_PASSWORD}"
                f"@{self.DB_HOST}:{self.DB_PORT}/{self.DB_NAME}"
            )
        if not self.REDIS_URL or not self.REDIS_URL.strip():
            self.REDIS_URL = f"redis://{self.REDIS_HOST}:{self.REDIS_PORT}/{self.REDIS_DB}"


settings = Settings()
