#!/bin/bash

if pgrep -x pavucontrol > /dev/null; then
    pkill pavucontrol
else
    GTK_THEME=Adwaita:dark pavucontrol &
fi
