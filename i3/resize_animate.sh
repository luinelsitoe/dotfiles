#!/bin/bash

# Define the animation duration (in milliseconds)
ANIMATION_DURATION=200

# Get the window ID and geometry
WINDOW_ID=$(xdotool getwindowfocus)
WIDTH=$(xdotool getwindowwidth "$WINDOW_ID")
HEIGHT=$(xdotool getwindowheight "$WINDOW_ID")
X=$(xdotool getwindowx "$WINDOW_ID")
Y=$(xdotool getwindowy "$WINDOW_ID")

# Calculate the target width and height based on mouse movement
mouse_x=$1
mouse_y=$2
delta_x=$((mouse_x - X))
delta_y=$((mouse_y - Y))
new_width=$((WIDTH + delta_x))
new_height=$((HEIGHT + delta_y))

# Send a series of resize events to achieve the animation
for i in $(seq 0 $((ANIMATION_DURATION / 16))); do
  i3-msg "[con_id=$WINDOW_ID] resize ${delta_x}x${delta_y}"
  usleep 16000
done
