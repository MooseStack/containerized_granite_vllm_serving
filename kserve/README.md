##  [Kserve Modelcars Container Images](https://kserve.github.io/website/latest/modelserving/storage/oci/)

- Build a redistributable container image that downloads an AI model to /models directory from Huggingface using [download_model.py](modelcars_container/granite-3.1-2b-instruct/download_model.py)

## Create Modelcar
1. Build container image
`podman build -t granite-2b:latest --platform linux/amd64 ./kserve/modelcars_container/granite-3.1-2b-instruct`

2. Push to your remote image registry.

Example: 
- https://hub.docker.com/r/moosestack/ubi-kserve-modelcar-granite-3.1-2b-instruct/tags
- `docker.io/moosestack/ubi-kserve-modelcar-granite-3.1-2b-instruct:latest`