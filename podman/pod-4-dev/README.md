podman play kube pod-4-dev.yaml --start
podman run -dt --pod pod-4-dev  docker.io/rnwood/smtp4dev:latest
>podman pull docker.io/rnwood/smtp4dev