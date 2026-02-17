Coding tools:
aider (open source cli), ~/.aider.config.yaml, works with ollama, works relative to git repo
codex works with chatgpt, can work with local ollama (see --oss flag): https://docs.ollama.com/integrations/codex
gemini works with google model
opencode.ai (open source cli), works with ollama

Models with ollama are downloaded to docker container: /root/.ollama/models/


Check if they are using gpu/cpu or both:
```
root@2bae3e272cf8:/# ollama ps
NAME        ID              SIZE     PROCESSOR    CONTEXT    UNTIL              
qwen3:8b    500a1f067a9f    11 GB    100% CPU     40960      4 minutes from now 
```

Also see:
- gputop
- intel_gpu_top

Graphics card info:
- lshw
- lspci
- glxinfo
- vulkaninfo
