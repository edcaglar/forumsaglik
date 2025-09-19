# Forum Saglik

# Sertifika

mkcert -install
mkcert -key-file certificates/key.pem -cert-file certificates/cert.pem localhost 127.0.0.1

# Run dev environment with HTTPS

python -m app.main

# Alembic

alembic revision --autogenerate -m "message"
alembic upgrade head
