#!/bin/bash
REL_PATH_TO_SCRIPT=$(dirname "${BASH_SOURCE[0]}")
cd "${REL_PATH_TO_SCRIPT}"

################################################################################

NAME='dtl'

TAG_VERS="v1.02"

BASE_TAG_VERS="v1.00"

PUBLIC_HUB_TAG_VERS="1.0"

IMAGENAME_PREFIX="supervisely"

ENTRY_POINTS=\
"main = /workdir/src/dtl.py"

DEFAULT_RUN_ENTRY="main"

SLY_TASK_DATA="auto"

################################################################################
# local paths parameters (for host, start etc)

LOCAL_PARAMS_FILE_PATH="params.local.sh"
if [ -f "${LOCAL_PARAMS_FILE_PATH}" ]; then
    source "${LOCAL_PARAMS_FILE_PATH}"
fi

# the following variables may be defined:
#  - LOCAL_ENVS - additional envs
#  - LOCAL_VOLUMES - additional volumes
#  - SLY_TASK_DATA - path to dir with task data

################################################################################
