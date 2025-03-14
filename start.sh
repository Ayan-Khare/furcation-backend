#!/bin/bash

# Install missing OpenGL and OpenCV dependencies
apt-get update && apt-get install -y libgl1-mesa-glx

# Run the FastAPI server
uvicorn api.main:app --host 0.0.0.0 --port 8000
