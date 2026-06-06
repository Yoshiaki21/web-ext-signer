#!/bin/bash
set -e

SIGNER_DIR=~/web-ext-signer
EXT_DIR=$(pwd)

podman run --rm \
  -v "${EXT_DIR}:/work:Z" \
  --env-file "${SIGNER_DIR}/.env" \
  registry.gskraft.com/web-ext-signer:latest

echo "署名完了: ${EXT_DIR}/artifacts/"
