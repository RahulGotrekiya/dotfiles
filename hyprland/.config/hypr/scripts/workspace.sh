#!/bin/bash

# Get the current workspace
CURRENT_WS=$(hyprctl monitors -j | jq -r '.[0].activeWorkspace.id')

# Get the total number of workspaces
TOTAL_WS=$(hyprctl workspaces -j | jq '.[].id' | sort -n | tail -1)

if [ "$1" == "next" ]; then
    if [ "$CURRENT_WS" -lt "$TOTAL_WS" ]; then
        hyprctl dispatch workspace e+1
    fi
elif [ "$1" == "prev" ]; then
    if [ "$CURRENT_WS" -gt 1 ]; then
        hyprctl dispatch workspace e-1
    fi
fi

