#!/bin/sh

set -e pipefail
if [[ "$INPUT_DEBUG" == "true" ]]; then
    set -o xtrace
fi

export RUN=${INPUT_RUN}

function ensure() {
    if [ -z "${1}" ]; then
        echo >&2 "Unable to find the ${2} variable. Did you set with.${2}?"
        exit 1
    fi
}

ensure "${RUN}" "run"

export ARGS="$RUN"

/bin/sh -c "$ARGS"
