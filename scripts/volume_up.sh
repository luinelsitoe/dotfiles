#!/bin/bash

volume=$(pactl get-sink-volume @DEFAULT_SINK@ | awk '{print $5}')
volume="${volume:0:-1}"

if [ $volume -lt 150 ]; then
    pactl set-sink-volume @DEFAULT_SINK@ +5% && $refresh_i3status
fi
