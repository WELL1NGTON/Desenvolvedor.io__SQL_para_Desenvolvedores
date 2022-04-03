#!/bin/sh

# Script para trocar o owner do volume SQL caso ocorra algum problema

SCRIPT_PATH="$(dirname -- "$(readlink -fn -- "$0")")"

SQLVOLUME_PATH="${SCRIPT_PATH}/sqlvolume"

sudo chown -R 10001:10001 ${SQLVOLUME_PATH}
