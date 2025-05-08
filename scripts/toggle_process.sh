#!/bin/bash

# Check if a process name was passed
if [ -z "$1" ]; then
    echo "Made it here"
    exit 1
fi

PROCESS_NAME="$1"

if ps -C "$PROCESS_NAME" > /dev/null; then
    pkill -f $PROCESS_NAME
else
    GTK_THEME=Adwaita:dark $PROCESS_NAME &
fi
