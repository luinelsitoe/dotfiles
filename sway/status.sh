#!/bin/bash

    # Uso da CPU
    cpu_usage=$(awk -v FS=":" '/cpu /{print $2}' /proc/stat | awk '{print $1}')
    
    # Uso da memória
    mem_usage=$(free -g | awk '/^Mem.:/{print $3 "gb/" $2 "gb"}')
    
    # Intensidade do sinal Wi-Fi
    wifi_strength=$(iwconfig 2>/dev/null | awk '/Link Quality/{print $2}')
    
    # Status da bateria
    battery_status=$(acpi -b | awk -F', ' '{print $2}')

    # Data e hora
    datetime=$(date +'%d-%m-%Y [%X]')
    
    # Linha de status
    echo "CPU: $cpu_usage | Mem: $mem_usage | Wi-Fi: $wifi_strength | Battery: $battery_status | $datetime"
    
