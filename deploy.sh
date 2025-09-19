#!/usr/bin/env bash
set -euo pipefail
cd /opt/forum-stack

# GHCR private ise önce login (yoksa atla):
# echo "$GHCR_PAT" | docker login ghcr.io -u "$GHCR_USER" --password-stdin

# en yeni imajları çek
docker compose pull

# şema migrasyonu (alembic)
docker compose run --rm backend alembic upgrade head

# servisleri yeni imajlarla ayağa kaldır
docker compose up -d --no-deps backend frontend traefik

# temizlik
docker image prune -f || true
