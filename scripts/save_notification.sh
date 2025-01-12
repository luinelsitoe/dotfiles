#!/bin/bash

notifications=$(dunstctl history | jq -r '.data[0] | .[] | (.id.data | tostring) + "-" + .appname.data + ": " + .summary.data')

IFS=$'\n'
for i in $notifications; do
    #verifica se cada notificacao existe no ficheiro saved
    #se estiver conta como lida
    if ! cat ~/.config/scripts/saved_notifications.txt | grep "$i" > /dev/null; then
	if ! cat ~/.config/scripts/notifications_history.txt | grep "$i" > /dev/null; then
	    echo "$i" >> ~/.config/scripts/notifications_history.txt
	fi
    fi
    # isso é para a funcionalidade de limpar todas a notificacoes
    if ! cat ~/.config/scripts/notifications_history.txt | grep "Clear all notifications!" > /dev/null; then
	echo "Clear all notifications!" >> ~/.config/scripts/notifications_history.txt
    fi
done

#Salva todas as notificacoes no ficheiro saved
truncate -s 0 ~/.config/scripts/saved_notifications.txt 
for i in $notifications; do
    echo "$i" >> ~/.config/scripts/saved_notifications.txt
done
unset IFS

sort --reverse --output=$HOME/.config/scripts/saved_notifications.txt ~/.config/scripts/saved_notifications.txt 
sort --reverse --output=$HOME/.config/scripts/notifications_history.txt ~/.config/scripts/notifications_history.txt 
