#!/bin/sh
set -euo pipefail

ls

docker build --pull --rm -f "${PLUGIN_DOCKERFILE}" -t dronepluginnpmpublish:latest "."
