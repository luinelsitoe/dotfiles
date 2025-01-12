#!/bin/bash

# Obtém o volume do microfone e se está mudo ou não
output=$(amixer sget Capture)

# Extrai o volume percentual
volume=$(echo "$output" | grep -oP '\[\d+%\]' | head -1 | tr -d '[]%')

# Verifica se o microfone está mudo
muted=$(echo "$output" | grep -oP '\[off\]' | head -1)

# Formata a saída
if [ -n "$muted" ]; then
    echo " muted"  # Ícone de microfone mudo
else
    echo " $volume%"  # Ícone de microfone com o volume
fi
