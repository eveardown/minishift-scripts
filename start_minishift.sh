#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

set -u

echo "Starting minishift VM ..."
minishift start || {
    echo "ERROR. Failed to start minishift VM."
    exit 1
}
echo "Started Minishift OK."

${DIR}/start_openshift_console.sh
