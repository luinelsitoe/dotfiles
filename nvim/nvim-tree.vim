lua << EOF
require('nvim-tree').setup {
    view = {
        width = 50,
        side = 'left', 
    },
    filters = {
        dotfiles = false,
    },
}
EOF
