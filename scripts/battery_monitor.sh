#!/bin/bash

while true; do
    tmp=$(acpi | grep -Eo '[0-9]+%')
    percentage="${tmp:0:-1}"
    status=$(acpi | cut -d' ' -f3)
    if [ "$status" = "Discharging," ]; then
	if (( percentage <= 20 )); then 
	    notify-send -u critical "ATENÇÃO" "Bateria fraca!"
	fi
    fi
    sleep 5m
done
