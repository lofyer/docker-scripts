#!/bin/bash

CUDA_ENABLED=${CUDA_ENABLED:-true}
DEVICE=""

if [ "${CUDA_ENABLED}" != "true" ]; then
    DEVICE="--device cpu"
fi

exec nohup python tools/run_webui.py ${DEVICE} &
exec python tools/api_server.py --listen 0.0.0.0