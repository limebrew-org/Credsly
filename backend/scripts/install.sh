#!/bin/bash

PY_VERSION="3.11.5"

#? virtaul environment name
ENV_NAME="credsly"

#? Create environment
conda create -n $ENV_NAME python=$PY_VERSION -y

#? Activate environment
source ~/miniconda3/bin/activate $ENV_NAME

#? Install the project dependencies
pip install -r requirements.txt