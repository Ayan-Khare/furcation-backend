#!/bin/bash

# Install OpenGL dependencies
apt-get update && apt-get install -y libgl1-mesa-glx

# Run FastAPI app
uvicorn api.main:app --host 0.0.0.0 --port $PORT
