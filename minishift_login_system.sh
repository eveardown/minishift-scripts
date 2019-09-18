#!/bin/bash
echo "Logging onto minishift VM as system ..."
oc login -u system:admin || {
    echo "ERROR. Failed to logon to minishift VM as system."
    exit 1
}
echo "Logged on to minishift as system OK."
