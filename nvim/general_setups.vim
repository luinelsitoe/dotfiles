set termguicolors
colorscheme dracula
let mapleader = " "
lua << EOF
require'colorizer'.setup({
  '*'; -- Ativa para todos os tipos de arquivos
}, {
  RGB = true; RRGGBB = true;
  names = false;
  RRGGBBAA = true;
  rgb_fn = true;
  hsl_fn = true;
})

require'nvim-tree'.setup {
  view = {
    width = 50,  -- Defina a largura desejada aqui
    side = 'left',  -- Pode ser 'left' ou 'right'
  },
}

--require("bufferline").setup({
--  highlights = {
--    buffer_selected = { fg = "#F28FAD", bold = true }, 
--    buffer_visible = { fg = "#7F849C" },              
--    background = { fg = "#5C6370" },                 
--  },
--})

require("toggleterm").setup{}
require("mason").setup{}
require('live-server').setup{}
require("auto-session").setup{}
require('nvim_comment').setup{}

--########################### Harpoon setup #########################
local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<C-A>", function() harpoon:list():add() end)
vim.keymap.set("n", "<C-h>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<A-1>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<A-2>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<A-3>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<A-4>", function() harpoon:list():select(4) end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<S-Tab>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<Tab>", function() harpoon:list():next() end)
--##################################################################
EOF
