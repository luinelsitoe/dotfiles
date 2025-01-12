#!/bin/bash

# Define as opções disponíveis
options="Logout\nSuspender\nDesligar\nReiniciar"

# Usa rofi para exibir o menu e capturar a seleção do usuário
selected_option=$(echo -e "$options" | rofi -dmenu -p "Escolha uma ação:")

# Executa a ação correspondente à seleção do usuário
case $selected_option in
    Desligar)
        systemctl poweroff
        ;;
    Reiniciar)
        systemctl reboot
        ;;
    Logout)
        # Detecta o ambiente de desktop e executa o comando de logout apropriado
        if [ "$XDG_CURRENT_DESKTOP" == "sway" ]; then
            swaymsg exit
        elif [ "$XDG_CURRENT_DESKTOP" == "i3" ]; then
            i3-msg exit
        elif [ "$XDG_CURRENT_DESKTOP" == "GNOME" ]; then
            gnome-session-quit --logout --no-prompt
        elif [ "$XDG_CURRENT_DESKTOP" == "KDE" ]; then
            qdbus org.kde.ksmserver /KSMServer logout 0 0 0
        else
            # Tenta um comando genérico de logout se o ambiente de desktop não for detectado
            pkill -KILL -u $USER
        fi
        ;;
    Suspender)
        systemctl suspend
        ;;
    *)
        # Descomente a linha abaixo se quiser uma notificação quando nenhuma ação for selecionada
        # notify-send "Ação cancelada" "Nenhuma ação foi selecionada."
        ;;
esac


