#!/bin/sh
set -euo pipefail

ls -al

docker build --pull --rm -f "${PLUGIN_DOCKERFILE}" -t dronepluginnpmpublish:latest "."
