#!/usr/bin/bash

DIR_INICIAL="$HOME"
export EDITOR=/home/luinel/Programs/nvim-linux-x86_64/bin/nvim

kitty bash -c "
selected_dir=\$(fd -H --type d . \"$DIR_INICIAL\" | fzf --border)
if [[ -n \"\$selected_dir\" ]]; then
    cd \"\$selected_dir\" || exit
    yazi
else
    yazi ~/
fi
exec bash
"
