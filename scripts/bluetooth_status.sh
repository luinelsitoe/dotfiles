#!/bin/bash

# Função para obter o nome do dispositivo Bluetooth conectado
get_connected_device_name() {
    # Obtém o nome do dispositivo Bluetooth conectado
    connected_device=$(bluetoothctl info | grep "Name" | awk -F ": " '{print $2}')
    echo "$connected_device"
}

# Verifica se o Bluetooth está ativado
bluetooth_status=$(bluetoothctl show | grep "Powered" | awk '{print $2}')

# Exibe o status do Bluetooth
if [ "$bluetooth_status" = "yes" ]; then
    # Obtém o nome do dispositivo conectado
    device_name=$(get_connected_device_name)
    
    if [ -n "$device_name" ]; then
        # Se houver um dispositivo conectado, exibe o nome
        echo "%{F#5e81ac}%{F-}$device_name %{A1:~/.config/polybar/scripts/bluetooth_connect.sh &:}⚙️ %{A}"
    else
        # Se não houver dispositivo conectado, apenas exibe o ícone de conexão
        echo "%{F#5e81ac}%{F-}Desconectado %{A1:~/.config/polybar/scripts/bluetooth_connect.sh &:}⚙️ %{A}"
    fi
else
    echo "%{F#bf616a}BLT %{F-}Off"
fi
