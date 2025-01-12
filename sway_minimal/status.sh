#!/bin/bash

    # Uso da CPU
    cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
    
    # Uso da memória
    mem_usage=$(free -h | awk 'NR==2 {print $3 "/" $4}')
    
    # Intensidade do sinal Wi-Fi
    wifi_strength=$(iwconfig 2>/dev/null | awk -F'=' '/Link Quality/{print $2}' | awk '{print $1}')
    wifi_ssid=$(iwconfig 2>/dev/null | awk -F'"' '/ESSID/{print $2}')
    netspeed=$(~/.config/scripts/speedtest_realtime.sh)
    total_data=$(~/.config/scripts/total_data.sh)
    
    # Status da bateria
    battery_status=$(acpi -b | awk -F', ' '{print $2}')

    # Data e hora
    datetime=$(date +'%d-%m-%Y [%X]')
    
    # Linha de status
    echo "CPU: $cpu_usage% | DOWN: $netspeed | TOTAL: $total_data | Mem: $mem_usage | Wi-Fi: $wifi_ssid ($wifi_strength) | Battery: $battery_status | $datetime"
    
