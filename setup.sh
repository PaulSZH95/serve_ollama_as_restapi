#!/bin/bash

# Load the environment variables from .env file
source .env

apt-get install lshw && \
curl https://ollama.ai/install.sh | sh && \
pip install aiohttp pyngrok && \
ngrok config add-authtoken $ngrok_token