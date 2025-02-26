#!/bin/bash
# python3.11 -m pip install open-webui
export WEBUI_AUTH=False OFFLINE_MODE=True ENABLE_OPENAI_API=False
open-webui serve --port 10001
