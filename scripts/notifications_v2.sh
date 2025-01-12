#!/bin/bash 

~/.config/scripts/save_notification.sh

selected=$(cat ~/.config/scripts/notifications_history.txt | rofi -p "Click a notification to remove it" -dmenu) 
id_selected=$(echo "$selected" | cut -d '-' -f1)
echo $id_selected

if [ -n "$selected" ]; then
    if [ "$selected" = "Clear all notifications!" ]; then
	option=$(echo -e "No\nYes" | rofi -p "Are you sure you want to clear all notifications?" -dmenu)
	if [ $option = "Yes" ]; then
	    truncate -s 0 ~/.config/scripts/notifications_history.txt
	fi
    else 
	option=$(echo -e "View\nRemove" | rofi -p "Choose an option" -dmenu)
	if [ $option = "View" ]; then
	    dunstctl history-pop $id_selected
	elif [ $option = "Remove" ]; then  
	    sed -i "/$selected/d" ~/.config/scripts/notifications_history.txt
	fi
    fi
fi
