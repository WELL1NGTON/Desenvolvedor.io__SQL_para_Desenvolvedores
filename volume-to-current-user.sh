#!/bin/sh

# Script para trocar o owner do volume SQL caso ocorra algum problema

SCRIPT_PATH="$(dirname -- "$(readlink -fn -- "$0")")"

CURRENT_USER=$(whoami)
CURRENT_GROUP=$(id -g -n $CURRENT_USER)

SQLVOLUME_PATH="${SCRIPT_PATH}/sqlvolume"

sudo chown -R "${CURRENT_USER}:${CURRENT_GROUP}" ${SQLVOLUME_PATH}
