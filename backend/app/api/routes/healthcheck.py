
from datetime import datetime, timezone
from fastapi import APIRouter


router = APIRouter(prefix="", tags=["health"])


@router.get("/healthz")
async def healthz():
    """Liveness: uygulama ayakta mı? (bağımlılık yok)"""
    return {
        "status": "ok",
        "now": datetime.now(timezone.utc).isoformat(),
    }