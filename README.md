

## Summary
- Small Granite Models used in this repo: [granite](https://huggingface.co/ibm-granite/)

- [vLLM](https://docs.vllm.ai/en/stable/index.html) is used as the runtime for LLM inference and serving.

```
.
├── kserve
│   ├── modelcars_container #AI Models downloaded into an image
│   │   └── granite-3.1-2b-instruct
│   │       ├── Containerfile
│   │       └── download_model.py
│   └── README.md
└── vllm
    ├── cpu_granite-3.1-2b #AI model and vLLM api server into an image
    │   ├── Containerfile
    │   ├── entrypoint.sh
    │   └── README.md
    └── model_download_at_runtime_example.md #example of only vLLM, itll download AI model during container startup.
```

## [Kserve](kserve) - Modelcars (AI Model stored inside Container)

- https://kserve.github.io/website/latest/modelserving/storage/oci/
- [How to create Modelcars - README.md](kserve/README.md)

## [vllm](vllm) - LLM inference and serving
- [How to create vLLM ready container with Granite - README.md](vllm/cpu_granite-3.1-2b/README.md)
- [vllm/model_download_at_runtime_example.md](vllm/model_download_at_runtime_example.md)