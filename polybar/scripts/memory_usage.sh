#!/bin/bash

# Obtém a memória total e usada
mem_total=$(grep MemTotal /proc/meminfo | awk '{print $2}')
mem_used=$(grep MemAvailable /proc/meminfo | awk '{print $2}')

# Converte de kB para GB e calcula a memória usada
mem_used_gb=$(echo "scale=1; ($mem_total - $mem_used) / 1024 / 1024" | bc)

# Exibe a memória usada em GB
echo "${mem_used_gb} GB"
