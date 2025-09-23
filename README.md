# ForumSağlık — Monorepo

> **Frontend:** Next.js 15, TypeScript, Tailwind, shadcn/ui  
> **Backend:** FastAPI (async), SQLAlchemy, Alembic, Redis  
> **Prod altyapı:** Traefik v3 (TLS & dashboard), Postgres 16, Redis 7, Docker Compose  
> **CI/CD:** GitHub Actions → GHCR (image registry) → EC2 Deploy (`deploy.sh`)

## Özellikler

- Kullanıcı kayıt/giriş (Google OAuth dâhil)
- Tartışmalar, yanıtlar, beğeniler
- Kategori/alt kategori yapısı ve istatistikler
- Arama (konu/yanıt odaklı)
- E-posta doğrulama
- Prod’da otomatik TLS (Let’s Encrypt) ve güvenli ters proxy (Traefik)

## Dizin Yapısı

- `frontend/` — Next.js uygulaması (App Router) ve UI bileşenleri
- `backend/` — FastAPI uygulaması, API rotaları ve veritabanı modeli
- `docker-compose.dev.yml` — Lokal geliştirme için Postgres ve Redis
- `docker-compose.yml` — Üretim için Traefik + Backend + Frontend yığını
- `.env.example` — Ortam değişkenleri şablonu
- `deploy.sh` — Üretim güncelleme/dağıtım yardımcı betiği

## Local Geliştirme

### Altyapı (Docker)

```bash
# Postgres + Redis'ı ayağa kaldır
docker compose -f docker-compose-dev.yml up -d
```

### Backend (FastAPI)

```bash
cd backend
# Python ortamını hazırla (venv/uv/poetry)
pip install -r requirements.txt     # örnek

# Şema oluştur
alembic upgrade head

# Çalıştır
uvicorn app.main:app --reload --port 8000
# Health: http://localhost:8000/healthz
```

### Frontend (Next.js)

```bash
cd frontend
npm i
npm run dev
# http://localhost:3000
```

## Veritabanı

### Migrasyonlar (Alembic)

```bash
# Local
cd backend
alembic upgrade head

# Yeni bir migration oluşturmak için
alembic revision -m "add new table" --autogenerate
alembic upgrade head
```

## HTTPS ile Lokal Geliştirme (Opsiyonel)

Frontend için:

```bash
cd frontend
npm run dev:https  # Next.js experimental HTTPS
```

Backend için (örnek, mkcert ile):

```bash
mkcert -install
mkcert -key-file certificates/key.pem -cert-file certificates/cert.pem localhost 127.0.0.1
uvicorn app.main:app --host 0.0.0.0 --port 8000 \
  --ssl-keyfile certificates/key.pem \
  --ssl-certfile certificates/cert.pem
```

## Prod Kurulum & Deploy (EC2)

### İlk Kurulum

1. **EC2 hazırlık**

   ```bash
   sudo apt-get update
   sudo mkdir -p /opt/forum-stack/data/letsencrypt /opt/forum-stack/data/traefik
   sudo chown -R ubuntu:ubuntu /opt/forum-stack
   ```

2. **Dosyalar**

   - `/opt/forum-stack/` içine:
     - `docker-compose.yml`
     - `deploy.sh` (`chmod +x deploy.sh`)
     - `.env` (prod değerler)
     - `data/traefik/.htpasswd` (dashboard için Basic Auth; `user:hash` tek satır)

3. **DNS**
   - `forumsaglik.com` (apex), `www.forumsaglik.com`, `app.forumsaglik.com`, `api.forumsaglik.com`, `traefik.forumsaglik.com` → **EC2 Public IP**

### Deploy Akışı

Manuel:

```bash
cd /opt/forum-stack
./deploy.sh              # latest tag
# veya belirli commit:
IMAGE_TAG=<github_sha> ./deploy.sh
```

**`deploy.sh`**

- GHCR’dan `backend`/`frontend` image pull
- `alembic upgrade head` (compose ile backend konteynerinde)
- `backend` ve `frontend`’i yeni imajlarla `up -d`
- `docker image prune -f`

### Rollback

```bash
cd /opt/forum-stack
IMAGE_TAG=<eski_github_sha> ./deploy.sh
```

---

## CI/CD (GitHub Actions)

Dosya: `.github/workflows/prod.yml`

**Job 1 — build_and_push**

- `backend/Dockerfile` ve `frontend/Dockerfile` build → GHCR push
- Frontend için **build-time** arg:
  ```yaml
  build-args:
    NEXT_PUBLIC_API_URL: ${{ vars.NEXT_PUBLIC_API_URL || 'https://api.forumsaglik.com' }}
  ```

**Job 2 — deploy**

- `docker-compose.yml` & `deploy.sh` → EC2’ye scp
- EC2’de `IMAGE_TAG=${{ github.sha }} ./deploy.sh`

**Gerekli Secrets**

- `EC2_HOST`
- `EC2_SSH_KEY` (private key)

**Opsiyonel Vars**

- `NEXT_PUBLIC_API_URL`

---

## Traefik (TLS, Dashboard, Güvenlik)

- **TLS (Let’s Encrypt)**: otomatik sertifika (TLS challenge)
- **Yönlendirme**:
  - `www.*` ve `app.*` → apex redirect (301)
  - `traefik.forumsaglik.com` → `/dashboard/` & `/api/` açık (Basic Auth + security headers + rate limit)
- **Networks**:
  - `web`: public entrypoints
  - `internal`: Postgres/Redis internal erişim

**Dashboard:**

- URL: `https://traefik.forumsaglik.com/dashboard`
- Basic Auth dosyası: `./data/traefik/.htpasswd`
