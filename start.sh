#!/bin/bash

echo "🚀 Starting Ollama service..."

# Start Ollama in the background
ollama serve &

# Wait for Ollama to be ready
echo "⏳ Waiting for Ollama to start..."
sleep 10

# Pull the model if it doesn't exist
echo "📥 Pulling qwen2.5:7b model..."
ollama pull qwen2.5:7b

# Alternative models (uncomment if you prefer)
# ollama pull phi3:mini
# ollama pull llama3.1:8b

echo "✅ Ollama service ready!"

# Keep the container running
wait
