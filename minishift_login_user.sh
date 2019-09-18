#!/bin/bash
minishift_user="$1"
minishift_password="$2"
test -n "${minishift_user}" || {
    echo "ERROR: The first parameter must be the username to login to oc with."
    exit 1
}
test -n "${minishift_password}" || {
    echo "ERROR: The secod parameter must be the password to login to oc with."
    exit 1
}
minishift_ip=
minishift_ip="$(minishift ip)" || {
    echo "ERROR: faield to get minishift VM IP address."
    exit 1
}
minishift_port=8443
minishift_url=${minishift_ip}:${minishift_port}
echo "Logging onto minishift VM as ${minishift_user} ..."
oc login ${minishift_url} --username ${minishift_user} --password ${minishift_password} || {
    echo "ERROR. Failed to logon to minishift URL ${minishift_url} as ${minishift_user}."
    exit 1
}
echo "Logged on to ${minishift_url} as ${minishift_user} OK."
