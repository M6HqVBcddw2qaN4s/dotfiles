#!/bin/bash

# Get the mute status of the microphone
MUTE_STATUS=$(pactl get-source-mute @DEFAULT_SOURCE@)

# echo "$MUTE_STATUS"
# Toggle icon based on current status
if [ "$MUTE_STATUS" == "Mute: no" ]; then
    echo "󰍬"
else
    echo "󰍭"
fi
