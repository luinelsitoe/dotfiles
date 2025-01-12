#!/bin/bash

list=$(ls /home/luinel/backgrounds/ | grep -v "/")
opt=$(echo "$list" | rofi -p "Selecione o fundo" -dmenu)

if [ -n "$opt" ]; then
    feh --bg-fill "/home/luinel/backgrounds/$opt"
fi
