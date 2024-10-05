# Docker Ollama

All you need is docker, tmux, and Ollama installed. Then run `bash start_ollama.sh`

You can change the models listed in _run_autocomplete.sh or _run_chat.sh if you would like. The current models are lightweight.

Lastly you will need to configure your Continue plug in like so

```json
{
  "models": [
    {
      "title": "Llama 3.2 1B",
      "provider": "ollama",
      "model": "llama3.2:1b"
    }
  ],
  "tabAutocompleteModel": {
    "title": "Qwen2.5 Coder 1.5B",
    "provider": "ollama",
    "model": "qwen2.5-coder:1.5b"
  },
  "tabAutocompleteOptions": {
    "multilineCompletions": "always"
  },
}
```