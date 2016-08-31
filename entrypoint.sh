#!/bin/bash
set -e


DEBUG=${DEBUG:-false}
ENABLE_AUTH=${ENABLE_AUTH:-false}

args=""

[[ $DEBUG == true ]] && set -x

[[ $ENABLE_AUTH == true ]] && args="--auth"

/usr/bin/mongod $args
