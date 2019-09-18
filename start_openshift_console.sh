#!/bin/bash
minishift_ip=
minishift_ip="$(minishift ip)" || {
    echo "ERROR: Failed to get minishift IP address."
    exit 1
}
console_url="https://${minishift_ip}:8443/console"
nohup google-chrome --new-window ${console_url} >/dev/null 2>&1 &

echo "Started browser to ${console_url}."
