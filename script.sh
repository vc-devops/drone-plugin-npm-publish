#!/bin/sh
set -euo pipefail

ls -al

docker build -t docker-whale .
