from base64 import b64decode, b64encode
from datetime import datetime, timezone
import hashlib
from http.client import HTTPException
import re
from typing import Optional

from ulid import ULID

def to_camel_case(s: str) -> str:
    parts = s.split("_")
    return parts[0] + "".join(w.capitalize() for w in parts[1:])

def utcnow() -> datetime:
    return datetime.now(timezone.UTC)  # aware UTC

def sha256(s: str) -> str:
    return hashlib.sha256(s.encode()).hexdigest()

# returns slugified title
def slugify_tr(title: str) -> str:
    mapping = str.maketrans("çğıöşüÇĞİÖŞÜ", "cgiosuCGIOSU")
    t = title.translate(mapping).lower()
    t = re.sub(r"[^a-z0-9]+", "-", t).strip("-")
    return t or "kategori"


def parse_slugid(s: str) -> tuple[str, str]:
    i = s.rfind("--")
    if i <= 0:
        raise HTTPException(404, "Invalid slug")
    return s[:i], s[i+2:]


def new_public_id() -> str:
    return str(ULID()).lower()

def encode_cursor(last_ts, last_id) -> str:
    # cursor format: base64 encoded string of "timestamp|id"
    cursor = b64encode(f"{last_ts.isoformat()}|{last_id}".encode()).decode()
    return cursor

def decode_cursor(cursor: str | None):
    # cursor format: base64 encoded string of "timestamp|id"
    # return current_timestamp and id
    if cursor is None:
        return None
    try:
        s = b64decode(cursor).decode()
        cur_ts_str, cur_id_str = s.split("|", 1)
        cur_ts = datetime.fromisoformat(cur_ts_str.replace("Z", "+00:00"))
        cur_id = int(cur_id_str)
        return cur_ts, cur_id
    except Exception as e:
        print(e)
        raise HTTPException(status_code=400, detail="Invalid cursor format")

def excerpt(txt: Optional[str], max_len: int = 240) -> str:
    if not txt:
        return ""
    t = txt.strip().replace("\n", " ")
    return t if len(t) <= max_len else (t[: max_len - 1] + "…")