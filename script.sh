#!/bin/sh
set -euo pipefail

ls

docker build --pull --rm -f "Dockerfile" -t dronepluginnpmpublish:latest "."
