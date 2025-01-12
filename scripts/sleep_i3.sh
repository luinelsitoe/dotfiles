#!/bin/bash

TIMEOUT=900  
IDLE_THRESHOLD=$((TIMEOUT * 1000))  

while true; do
    if ! playerctl status | grep -q "Playing"; then

        IDLE_TIME=$(xprintidle)
        
        if [ "$IDLE_TIME" -ge "$IDLE_THRESHOLD" ]; then
            systemctl suspend
        fi
    fi
    sleep 1
done
