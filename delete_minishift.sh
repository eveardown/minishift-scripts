#!/bin/bash
echo "Deleting minishift VM ..."
minishift delete -f || {
    echo "ERROR. Failed to delete minishift VM."
    exit 1
}
