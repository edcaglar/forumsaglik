import httpx
from typing import Optional
from app.core.settings import settings

_RESEND_URL = "https://api.resend.com/emails"

async def send_verification_email(
    *,
    to: str,
    subject: str,
    text: Optional[str] = None,
    token: str,
    reply_to: Optional[str] = None,
) -> None:
    """
    Resend üzerinden e-posta gönderir.
    Basit ve tek sağlayıcı: Şablon/renderer yok; HTML stringi doğrudan veriyoruz.
    """

    verify_link = f"{settings.API_ORIGIN}auth/verify-email?token={token}"

    html = f"""
      <p>Merhaba,</p>
      <p>E-postanı doğrulamak için
         <a href="{verify_link}">buraya tıkla</a>.</p>
      <p>Bu bağlantı 30 dakika içinde geçerlidir.</p>
    """

    payload = {
        "from": settings.EMAIL_FROM,
        "to": to,                   # tek alıcı; istersen liste de verebilirsin
        "subject": subject,
        "html": html,
    }
    if text:
        payload["text"] = text
    if reply_to:
        payload["reply_to"] = reply_to

    headers = {"Authorization": f"Bearer {settings.RESEND_API_KEY}"}
    async with httpx.AsyncClient(timeout=10) as cx:
        r = await cx.post(_RESEND_URL, headers=headers, json=payload)
        # 2xx değilse hata fırlat (FastAPI background task’ı loglar)
        r.raise_for_status()
