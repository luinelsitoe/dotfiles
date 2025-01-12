#!/bin/bash

# Detecta a interface de rede ativa
active_interface=$(ip route show default | awk '/default/ {print $5}')

# Verifica se a interface ativa foi encontrada
if [ -z "$active_interface" ]; then
    echo "0 KB/s"
    exit 1
fi

# Coleta a velocidade atual em bytes/segundo usando ifstat
# A opção -i especifica a interface e -t mostra os tempos em segundos
# Ajusta a saída para bytes
speed=$(ifstat -i "$active_interface" 1 1 | awk 'NR==3 {print $1 " " $2}')

# Converte a velocidade para kilobytes por segundo
# $1 e $2 representam bytes/s de download e upload
down_speed_kb=$(echo "$speed" | awk '{print ($1 + $2)}')

echo "$down_speed_kb" >> ~/.config/scripts/total_data.txt

# Converte a velocidade para megabytes por segundo se maior que 1024 KB/s
if (( $(echo "$down_speed_kb > 1024" | bc -l) )); then
    down_speed_mb=$(echo "scale=1; $down_speed_kb / 1024" | bc)
    echo "${down_speed_mb} MB/s"
else
	echo "${down_speed_kb} KB/s"
fi
