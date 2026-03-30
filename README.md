# Homespun Agents

A collection of lightweight bash scripts that run simple LLM-powered prompts, designed to work well in edge environments like the NVIDIA Jetson Orin Nano.

## About

Homespun Agents keeps things minimal and portable. Each script is a self-contained bash workflow that sends a prompt to a locally running LLM and processes the response. No Python virtual environments, no dependency trees, no cloud API keys — just bash and a local model.

The target environment is resource-constrained edge hardware where every megabyte of RAM counts and simplicity is a feature, not a compromise.

## Ollama

All scripts in this collection use [Ollama](https://ollama.com) as the inference backend. Ollama is a lightweight tool for running large language models locally. It handles model downloading, quantization, and serving behind a simple API, making it straightforward to run models on everything from a full workstation down to an ARM-based edge device like a Jetson.

### Install Ollama on Linux

```bash
curl -fsSL https://ollama.com/install.sh | sh
```

Once installed, pull a model to get started:

```bash
ollama pull llama3.2
```

Ollama will serve models on `http://localhost:11434` by default. The scripts in this repo interact with that endpoint.

## Getting Started

1. Install Ollama (see above).
2. Pull a model suitable for your hardware.
3. Clone this repo and make the scripts executable:

```bash
git clone https://github.com/rsyue/homespun-agents.git
cd homespun-agents
chmod +x scripts/*.sh
```

4. Run a script:

```bash
./scripts/simmer_down/simmer_down.sh
```

## Repository Structure

```
homespun-agents/
├── scripts/       # Agent scripts
├── prompts/       # Prompt templates (if separated from scripts)
├── LICENSE
└── README.md
```

## Requirements

- Linux (tested on Ubuntu / JetPack)
- Bash 4+
- [Ollama](https://ollama.com)
- `curl` and `jq`

## License

MIT

## Author

Richard Yue ([@rsyue](https://github.com/rsyue))
