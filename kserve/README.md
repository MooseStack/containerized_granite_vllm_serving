##  [Kserve Modelcars Container Images](https://kserve.github.io/website/latest/modelserving/storage/oci/)

- Build a redistributable container image that downloads an AI model to /models directory from Huggingface using [download_model.py](modelcars_container/download_model.py)

1. Build container image
`podman build -t granite-2b:latest --platform linux/amd64 ./kserve/modelcars_container/granite-3.1-2b-instruct`

2. Push to your remote image registry
