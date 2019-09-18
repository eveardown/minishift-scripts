#!/bin/bash

function set_config() {
    declare config_item="$1"
    declare item_value="$2"

    echo "Setting ${config_item} to ${item_value} ..."

    minishift config set ${config_item} ${item_value} || {
        echo "ERROR: Failed to set ${config_item} to ${item_value}."
        exit 1
    }
}
set_config vm-driver kvm
set_config  memory 8G
set_config cpus 4
set_config disk-size 100G
