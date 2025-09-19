FROM python:3.12-slim

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

# Sistem bağımlılıkları
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential curl netcat-traditional \
 && rm -rf /var/lib/apt/lists/*

# Uygulama kullanıcısı
RUN useradd -ms /bin/bash app
WORKDIR /app

# Gereksinimler
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Kod
COPY . .

# Entrypoint
COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

USER app
EXPOSE 8000
ENTRYPOINT ["docker-entrypoint.sh"]

# 8. Container ayağa kalktığında çalışacak komut
CMD ["uvicorn","app.main:app","--host","0.0.0.0","--port","8000","--workers","2","--proxy-headers","--forwarded-allow-ips","*","--timeout-keep-alive","5"]
