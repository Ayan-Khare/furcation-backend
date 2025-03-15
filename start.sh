#!/bin/bash

# Install system dependencies
apt-get update && apt-get install -y libgl1-mesa-glx libglib2.0-0

apt-get update && apt-get install ffmpeg libsm6 libxext6  -y

# Start the server
uvicorn api.main:app --host 0.0.0.0 --port 8000
