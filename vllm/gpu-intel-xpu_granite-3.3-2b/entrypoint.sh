#!/bin/bash
set -e

python3 -m vllm.entrypoints.openai.api_server \
        --model=/models \
        --max_model_len=10000 \
        --dtype=bfloat16 \
        --device=xpu \
        --host=0.0.0.0 \
        --port=8000 \
        --served-model-name=ibm-granite/granite-3.3-2b-instruct