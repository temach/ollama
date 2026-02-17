#!/bin/bash

export OLLAMA_DEBUG=1
export OLLAMA_HOST="0.0.0.0:11434"

# Start Ollama in the background.
/bin/ollama serve &
# Record Process ID.
pid=$!

# Pause for Ollama to start.
sleep 5

echo "🔴 Retrieve models..."
ollama pull deepseek-r1:1.5b
ollama pull deepseek-r1:8b
# ollama pull deepseek-ocr:3b
ollama pull opencoder:1.5b
ollama pull opencoder:8b
ollama pull qwen3:8b
ollama pull qwen3-coder:30b
ollama pull glm-4.7-flash:q4_K_M
# ollama pull qwen3-coder-next:latest
ollama pull lfm2.5-thinking:1.2b
# ollama pull gpt-oss:20b
echo "🟢 Done!"

# Wait for Ollama process to finish.
wait $pid
