#!/usr/bin/env bash

set +e

# add copy tool for templating
pip install -r /workspaces/copier-simple-demo/.devcontainer/requirements.txt
sudo cp cp.py /bin/copy
sudo chmod +x /bin/copy

if [ "$(command -v podman)" ]; then
    CONTAINER_ENGINE="podman"
elif [ "$(command -v docker)" ]; then
    CONTAINER_ENGINE="docker"
else
    echo "ERROR: Failed to find container engine. Please install docker or podman." >&2
    exit 1
fi

if [ -z "$(${CONTAINER_ENGINE} image ls | grep "arista/ceos")" ]; then
    echo "$(uname -m)"
    if [ "$(uname -m)" = "aarch64" ] || [ "$(uname -m)" = "arm64" ]; then
        if [ "${CEOS_LAB_INTERNAL_PULL}" ]; then
            ${CONTAINER_ENGINE} pull ${CEOS_LAB_INTERNAL_PULL}
            ${CONTAINER_ENGINE} tag ${CEOS_LAB_INTERNAL_PULL} arista/ceos:latest
        elif [ "${CEOS_LAB_INTERNAL_WGET}" ]; then
            wget --no-check-certificate ${CEOS_LAB_INTERNAL_WGET}
            ${CONTAINER_ENGINE} import cEOS-lab.tar.xz arista/ceos:latest
            rm cEOS-lab.tar.xz
        fi
    else
        if [ -z "${CEOS_LAB_VERSION}" ]; then
            echo "ERROR: Failed to find container engine. Please install docker or podman." >&2
            exit 1
        fi
        ardl get eos --image-type cEOS --version ${CEOS_LAB_VERSION} --import-docker
        ${CONTAINER_ENGINE} tag arista/ceos:${CEOS_LAB_VERSION} arista/ceos:latest
    fi
fi
# check if image is still missing and print a warning
if [ -z "$(${CONTAINER_ENGINE} image ls | grep "arista/ceos")" ]; then
    echo "WARNING: cEOS-lab image download failed. Try to upload and import it manually."
fi
