#!/bin/bash
cd /home/ubuntu/fastapi

# Create logs folder if not exists
mkdir -p logs

# Install requirements if changed
pip install -r requirements.txt --quiet

# Kill old process if running
pkill -f "gunicorn" || true

# Start with Gunicorn
gunicorn main:app \
  --config gunicorn.conf.py \
  --daemon

echo "FastAPI restarted successfully!"