status=$(playerctl status)
if [ $status != "Playing" ]; then
    playerctl play
else
    playerctl pause
fi
