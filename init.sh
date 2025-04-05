#!/bin/bash

# Filename: init.sh
# Purpose: First-time setup for n8n Docker environment

echo "🔧 Initializing n8n project..."

# Check if .env file exists
if [ ! -f .env ]; then
  echo "📄 .env not found, creating from .env.example..."
  cp .env.example .env
  echo "✅ .env created."
else
  echo "✔️ .env already exists."
fi

# Start Docker containers
echo "🐳 Starting n8n container with Docker Compose..."
docker compose up -d

echo "🚀 n8n is starting... Open http://localhost:5678 in your browser."
