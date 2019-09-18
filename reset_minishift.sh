#!/bin/bash
echo "Resetting minishift VM ..."
minishift delete --clear-cache -f || {
    echo "ERROR. Failed to delete minishift VM and clear cache."
    exit 1
}


echo "Reset minishift VM OK."

sudo virsh list --all

sudo virsh undefine minishift

rm -rf ~/.minishift/machines

echo "Removed minishift VM OK."
