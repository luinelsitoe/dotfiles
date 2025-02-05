#!/bin/bash

menu="Suspend\nLogout\nRestart\nShutdown"

option=$(echo -e "$menu" | wofi -p "Power menu" -d) 

case "$option" in
    "Suspend")
	systemctl suspend
	;;
    "Logout")
	swaymsg exit
	;;
    "Restart")
	systemctl reboot
	;;
    "Shutdown")
	systemctl poweroff
	;;
esac

