#!bin/bash 

apt-get update

# Python installation
echo "Installing python..."
apt-get install -y python3 python3-pip
alias python=python3

# UV installation
echo "Installing UV..."
curl -LsSf https://astral.sh/uv/install.sh | sh
uv venv

# Python packages installation
echo "Installing python packages..."
uv sync

# opencode.ai CLI installation
echo "Installing opencode.ai CLI..."
curl -fsSL https://opencode.ai/install | bash

# Ollama installation
apt-get install zstd
echo "Installing Ollama..."
curl -fsSL https://ollama.com/install.sh | sh

