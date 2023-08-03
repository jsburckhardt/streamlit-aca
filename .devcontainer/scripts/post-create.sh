#!/usr/bin/env bash

set -euo pipefail

# install black
pip3 install --user black
cd src/streamlit-example && pip3 install --user -r requirements.txt
