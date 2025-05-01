## Running via `podman` or `docker` with an x86 CPU only (no GPU):

Using prebuilt vLLM cpu image.
  - [pre-built official vLLM CPU Container ECR Image Registry](https://gallery.ecr.aws/q9t5s3a7/vllm-cpu-release-repo)
  - [vLLM CPU only docs](https://docs.vllm.ai/en/stable/getting_started/installation/cpu.html)
  - Ran on a machine with no GPU. Specs: 16vCPU and 64GB Memory.

1. Run container with vllm parameters
   
```
podman run -dit \
    --name granite \
    --publish 8000:8000 \
     public.ecr.aws/q9t5s3a7/vllm-cpu-release-repo:v0.8.5 \
       --model ibm-granite/granite-3.3-2b-instruct \
       --max_model_len=10000 \
       --dtype=bfloat16
```

2. Check logs for successful "Application Startup complete"

```
podman logs -f granite
```

3. Use model:
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