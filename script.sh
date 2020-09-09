#!/bin/sh
set -euo pipefail

ls -al

docker build --pull --rm -f "Dockerfile" -t dronepluginnpmpublish:latest "."
