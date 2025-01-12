#!/bin/bash

# Obtém o SSID da rede Wi-Fi conectada
active_ssid=$(nmcli -t -f ACTIVE,SSID dev wifi | awk -F: '/^sim/ {print $2}')

# Verifica se há uma conexão Wi-Fi ativa
if [ -n "$active_ssid" ]; then
    echo "%{F#5e81ac}%{F-}$active_ssid %{A1:~/.config/polybar/scripts/wlan_connect.sh &:}⚙️ %{A}"
else
    echo "%{F#bf616a}%{F-}Desconectado %{A1:~/.config/polybar/scripts/wlan_connect.sh &:}⚙️ %{A}"
fi
