#!/bin/bash
# Playwright tarayıcılarını yükle
playwright install
# Flask uygulamasını başlat
exec gunicorn -w 4 -k uvicorn.workers.UvicornWorker app:app
