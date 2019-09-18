#!/bin/bash

set -u

echo "Stopping minishift ..."
minishift stop|| {
    echo "ERROR. Failed to stop minishift."
    exit 1
}
echo "Stopped Minishift VM OK."
