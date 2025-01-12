#!/bin/bash

# Obtém o histórico de notificações
notifications=$(dunstctl history)

# Verifica se o dunst está em execução
if [ -z "$notifications" ]; then
    echo "Nenhuma notificação encontrada."
    exit 1
fi

# Conta o número de notificações usando o campo "body" para determinar a quantidade
notification_count=$(echo "$notifications" | grep -o '"body"' | wc -l)

# Exibe o número total de notificações
echo "$notification_count"
