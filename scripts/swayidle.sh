#!/bin/bash

playerctl -a pause
pactl set-sink-volume @DEFAULT_SINK@ 30% 
killall swaylock
swaylock
