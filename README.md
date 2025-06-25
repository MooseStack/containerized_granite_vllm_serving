

## Summary
- Small Granite Models used in this repo: [granite](https://huggingface.co/ibm-granite/)

- [vLLM](https://docs.vllm.ai/en/stable/index.html) is used as the runtime for LLM inference and serving.

```
.
├── modelcars #AI Models downloaded into an image
│   ├── granite-3.1-2b-instruct
│   │   ├── Containerfile
│   │   └── download_model.py
│   └── README.md
└── vllm #AI model using modelcars and vLLM serving/inference
    ├── cpu_granite-3.1-2b
    │   ├── Containerfile
    │   ├── entrypoint.sh
    │   └── README.md
    └── model_download_at_runtime_example.md #example of only vLLM, itll download AI model during container startup.
```

## [./modelcars](modelcars) - Modelcars (AI Model stored inside Container)

- https://kserve.github.io/website/latest/modelserving/storage/oci/
- How to create Modelcars: [modelcars/README.md](modelcars/README.md)

Prebuilt Modelcars:
- `docker.io/moosestack/ubi-modelcar-granite-3.3-2b-instruct:latest`
- `docker.io/moosestack/ubi-kserve-modelcar-granite-3.1-2b-instruct:latest`


## [./vllm](vllm) - LLM inference and serving
- [How to create vLLM ready container with Granite - README.md](vllm/cpu_granite-3.1-2b/README.md)
- [vllm/model_download_at_runtime_example.md](vllm/model_download_at_runtime_example.md)