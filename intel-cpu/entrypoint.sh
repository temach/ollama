#!/bin/bash

# Start Ollama in the background.
/bin/ollama serve &
# Record Process ID.
pid=$!

# Pause for Ollama to start.
sleep 5

echo "🔴 Retrieve models..."
ollama pull deepseek-r1:8b
# ollama pull deepseek-r1:7b
echo "🟢 Done!"

# Wait for Ollama process to finish.
wait $pid
