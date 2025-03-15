#!/bin/bash

# Install system dependencies
apt-get update && apt-get install libgl1 
#!/bin/bash
pip uninstall -y opencv-python
pip install --no-cache-dir opencv-python-headless
uvicorn api.main:app --host 0.0.0.0 --port $PORT

