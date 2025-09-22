#!/usr/bin/env bash
# deploy.sh — ForumSaglik prod deploy (EC2)
# Kullanım: ./deploy.sh [IMAGE_TAG]
# Not: IMAGE_TAG verilmezse compose'taki default (latest) kullanılır.

set -euo pipefail

### -------- config --------
STACK_DIR="/opt/forum-stack"
COMPOSE="docker compose"
IMAGE_TAG="${1:-${IMAGE_TAG:-latest}}"   # opsiyonel argüman > env > 'latest'
ACME_PATH="$STACK_DIR/data/letsencrypt/acme.json"
### ------------------------

log() { printf "\n\033[1;36m[%s]\033[0m %s\n" "$(date '+%H:%M:%S')" "$*"; }

cd "$STACK_DIR"

# 0) Ön kontroller
log "Ön kontroller yapılıyor…"
command -v docker >/dev/null || { echo "Docker yok!"; exit 1; }
$COMPOSE version >/dev/null || { echo "Docker Compose plugin yok!"; exit 1; }

test -f .env || { echo ".env dosyası yok ($STACK_DIR/.env). Oluştur ve tekrar dene."; exit 1; }
test -f docker-compose.yml || { echo "docker-compose.yml yok ($STACK_DIR)."; exit 1; }

# 1) Traefik ACME storage izinleri (ilk kurulum için güvenli)
if [[ -f "$ACME_PATH" ]]; then
  chmod 600 "$ACME_PATH" || true
fi


# 3) IMAGE_TAG export (compose içinde kullanılacaksa)
export IMAGE_TAG

# 4) İmajları çek (image tabanlı compose için)
log "İmajlar çekiliyor (pull)…"
$COMPOSE pull || true

# 5) Veritabanı migrasyonları (alembic)
log "Alembic migration uygulanıyor…"
# Not: backend servisi env_file ve network ayarlarıyla gelir.
$COMPOSE run --rm backend alembic upgrade head

# 6) Servisleri yeni imajlarla ayağa kaldır
log "Servisler ayağa kaldırılıyor (traefik, backend, frontend)…"
$COMPOSE up -d --no-deps traefik backend frontend

# 7) Durum özeti
log "Durum:"
$COMPOSE ps

# 8) Temizlik (kullanılmayan imajlar)
log "Kullanılmayan imajlar temizleniyor…"
docker image prune -f || true

log "Deploy başarılı  (IMAGE_TAG=${IMAGE_TAG})"
echo "Kontrol: https://api.forumsaglik.com/healthz  ve  https://app.forumsaglik.com"
