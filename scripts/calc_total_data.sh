#!/bin/bash

truncate -s 0 ~/.config/scripts/total_data.txt

while true; do
    ~/.config/scripts/speedtest_realtime.sh
    sleep 1s
done
