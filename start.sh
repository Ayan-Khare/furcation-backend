#!/bin/bash

# Install required system libraries
apt-get update && apt-get install -y libgl1-mesa-glx libglib2.0-0

# Start FastAPI server
uvicorn api.main:app --host 0.0.0.0 --port 8000
