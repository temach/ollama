#!/bin/bash

# init ollama first
mkdir -p /llm/ollama
cd /llm/ollama
init-ollama
export OLLAMA_NUM_GPU=999
export ZES_ENABLE_SYSMAN=1
export OLLAMA_DEBUG=1
export OLLAMA_HOST="0.0.0.0:11434"

# Start Ollama in the background.
./ollama serve &
# Record Process ID.
pid=$!

# Pause for Ollama to start.
sleep 5

echo "🔴 Retrieve models..."
./ollama pull deepseek-r1:8b
# ./ollama pull deepseek-r1:7b
# ./ollama pull deepseek-r1:1.5b
echo "🟢 Done!"

# Wait for Ollama process to finish.
wait $pid
