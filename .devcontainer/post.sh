#!bin/bash 

apt-get update

# Python installation
if ! command -v python --version >/dev/null 2>&1; then
    echo "Installing python..."
    apt-get install -y python3 python3-pip
else
    echo "Python already installed"
fi

# opencode.ai CLI installation
if ! command -v opencode >/dev/null 2>&1; then
    echo "Installing opencode.ai CLI..."
    curl -fsSL https://opencode.ai/install | bash
else
    echo "opencode.ai CLI already installed"
fi

# Ollama installation
if ! command -v ollama >/dev/null 2>&1; then
    apt-get install zstd
    echo "Installing Ollama..."
    curl -fsSL https://ollama.com/install.sh | sh
else
    echo "Ollama already installed"
fi

# UV installation
if ! command -v uv --version >/dev/null 2>&1; then
    echo "Installing UV..."
    curl -LsSf https://astral.sh/uv/install.sh | sh
else
    echo "UV already installed"
fi
