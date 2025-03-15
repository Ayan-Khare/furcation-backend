#!/bin/bash

# Install system dependencies
apt-get update && apt-get install libgl1

# Start the server
uvicorn api.main:app --host 0.0.0.0 --port 8000
