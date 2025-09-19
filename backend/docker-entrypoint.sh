#!/usr/bin/env bash
set -e

# Postgres hazır mı?
if [ -n "${DB_HOST}" ]; then
  until nc -z "${DB_HOST}" "${DB_PORT:-5432}"; do
    echo "Waiting for Postgres..."
    sleep 1
  done
fi

# Redis hazır mı?
if [ -n "${REDIS_HOST}" ]; then
  until nc -z "${REDIS_HOST}" "${REDIS_PORT:-6379}"; do
    echo "Waiting for Redis..."
    sleep 1
  done
fi

exec "$@"
