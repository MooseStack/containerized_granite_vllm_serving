# TODO - Not fully tested yet

# Granite 3.3-2B Instruct vLLM Nvidia CUDA GPU Container

This directory contains resources to build a container image for serving the IBM Granite 3.3-2B Instruct model using the vLLM API server on **Intel XPU GPU**.

## Purpose

- **Containerfile**:  
  The `Containerfile` defines a multi-stage build.  
  - **Stage 1** pulls the Granite 3.3-2B Instruct model files from a prebuilt image.
  - **Stage 2** Uses prebuilt Intel XPU vLLM container image, copies the model files into it, and sets up the container to serve the model via the vLLM OpenAI-compatible API server.

- **entrypoint.sh**:  
  The `entrypoint.sh` script is used as the container's entrypoint.  
  It launches the vLLM OpenAI API server with the correct model path, configuration, and server options, making the model available for inference requests on port 8000.

## Usage

1. Build the container image:

```
podman build -t vllm_gpu_intel-xpu_granite-3.3-2b:latest --platform linux/amd64 ./vllm/gpu-intel-xpu_granite-3.3-2b
```

2. Run container
```
podman run -it -p 8000:8000 vllm_gpu_intel-xpu_granite-3.3-2b:latest
```

3. Test
```
curl -X POST "http://localhost:8000/v1/chat/completions" \
        -H "Content-Type: application/json" \
        --data '{
                "model": "ibm-granite/granite-3.3-2b-instruct",
                "messages": [
                        {
                                "role": "user",
                                "content": "Will AI take over?"
                        }
                ]
        }' | jq '.choices[0].message.content'
```