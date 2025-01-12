#!/bin/bash

# Lista todos os dispositivos Bluetooth conhecidos com o formato correto
devices=$(bluetoothctl devices | awk '{print $2 " " $3 " " $4 " " $5 " " $6 " " $7}')

# Verifica se há dispositivos disponíveis
if [ -z "$devices" ]; then
    notify-send "Bluetooth" "Nenhum dispositivo Bluetooth conhecido encontrado."
    exit 1
fi

# Usa rofi para exibir a lista e capturar a seleção
selected_device=$(echo "$devices" | rofi -dmenu -p "Escolha o dispositivo Bluetooth:")

# Verifica se algum dispositivo foi selecionado
if [ -n "$selected_device" ]; then
    # Extrai o MAC address do dispositivo selecionado
    device_mac=$(echo "$selected_device" | awk '{print $1}')
    
    # Tenta conectar ao dispositivo selecionado
    connection_result=$(bluetoothctl connect "$device_mac" 2>&1)

    # Verifica o resultado da tentativa de conexão
    if echo "$connection_result" | grep -q "Connection successful"; then
        notify-send "Bluetooth" "Conectado com sucesso ao dispositivo $selected_device."
    else
        notify-send "Bluetooth" "Falha na conexão com o dispositivo $selected_device: $connection_result"
    fi
else
    #notify-send "Bluetooth" "Nenhum dispositivo selecionado."
fi
