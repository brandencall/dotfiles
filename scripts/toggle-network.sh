#!/bin/bash

if pgrep -f "nm-connection-editor" > /dev/null; then
    pkill -f "nm-connection-editor" 
else
    GTK_THEME=Adwaita:dark nm-connection-editor &
fi
