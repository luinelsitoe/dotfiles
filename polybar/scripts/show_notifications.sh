#!/bin/bash

# Obtém o histórico de notificações em JSON
notifications=$(dunstctl history)

# Processa o JSON usando jq para obter o formato desejado com os IDs das notificações
formatted_notifications=$(echo "$notifications" | jq -r '.data[] | to_entries[] | "\(.value.id.data): \(.value.appname.data) - \(.value.summary.data)"')

# Mostra as notificações formatadas no rofi e captura a seleção
selected=$(echo "$formatted_notifications" | rofi -dmenu -p "Notificações:")

# Extrai o ID selecionado
selected_id=$(echo "$selected" | cut -d: -f1)

# Se um ID foi selecionado, mostra a notificação correspondente
if [ -n "$selected_id" ]; then
    # Remove os espaços do ID
    selected_id=$(echo "$selected_id" | tr -d ' ')
    # Exibe a notificação
    dunstctl history-pop "$selected_id"
fi
