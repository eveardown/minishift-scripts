#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

${DIR}/stop_minishift.sh || exit 1
${DIR}/start_minishift.sh
