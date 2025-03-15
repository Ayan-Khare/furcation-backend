#!/bin/bash

# Install system dependencies
apt-get update && apt-get install -y libgl1-mesa-glx libglib2.0-0

# Install Python dependencies
pip install --no-cache-dir -r /app/requirements.txt

# Start the server
uvicorn api.main:app --host 0.0.0.0 --port 8000
