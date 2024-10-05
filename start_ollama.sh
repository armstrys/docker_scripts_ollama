#!/bin/bash
docker kill ollama  # Stop any existing Docker container named 'ollama'.
docker kill ollama
docker rm ollama
docker run -d -v ollama:/root/.ollama -p 11434:11434 --name ollama ollama/ollama
tmux new-session -d -s "ollama_chat" ./_run_chat.sh
tmux new-session -d -s "ollama_autocomplete" ./_run_autocomplete.sh
bash ./_pull_embedding.sh