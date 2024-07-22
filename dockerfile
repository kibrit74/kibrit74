# Base image olarak Python 3.9 kullan
FROM python:3.9-slim

# Çalışma dizinini ayarla
WORKDIR /app

# Gereksinim dosyasını ve uygulama dosyalarını kopyala
COPY requirements.txt requirements.txt
COPY . .

# Sanal ortamı oluştur ve etkinleştir
RUN python -m venv venv
RUN /bin/bash -c "source venv/bin/activate && pip install -r requirements.txt"

# Uygulamayı başlat
CMD ["/bin/bash", "-c", "source venv/bin/activate && python app.py"]
