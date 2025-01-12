#!/bin/bash

~/.config/scripts/save_notification.sh
notifications=$(wc -l ~/.config/scripts/notifications_history.txt | cut -d ' ' -f1)
#por conta daquele clear notifications que conta como notificacao temos que remover uma notificacao da contagem
notifications=$((notifications - 1))
echo "$notifications"
