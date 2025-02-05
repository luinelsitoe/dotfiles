-- Carregar arquivos de configuração
require("config.lazy")
require('general_setups')
require('lsp')
require('completion')
require('tree-sitter')

-- Configurações gerais
vim.g.mapleader = " "
vim.opt.clipboard = 'unnamedplus'
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 4
vim.cmd('hi Normal ctermbg=none guibg=none')

-- Mapeamentos normais
vim.keymap.set('n', '<leader>q', ':bd<CR>', { silent = true })
vim.keymap.set('n', '<Tab>', ':bn<CR>', { silent = true }) vim.keymap.set('n', '<S-Tab>', ':bp<CR>', { silent = true })
-- Mapeamento no terminal
vim.keymap.set('t', '<A-Esc>', '<C-\\><C-n>', { silent = true })

-- Corrigir sessão salva automaticamente
vim.api.nvim_create_autocmd('VimEnter', {
    pattern = '*',
    command = 'SessionDelete /home/luinel'
})

-- Configuração do Emmet
vim.g.user_emmet_leader_key = '<C-s>'

-- Mapeamentos do JDTLS
vim.keymap.set('n', '<A-i>', "<Cmd>lua require'jdtls'.organize_imports()<CR>", { silent = true })

-- Mapeamentos de alguns Plugins
vim.keymap.set('n', '<leader>f', ':Telescope find_files<CR>', { silent = true })
vim.keymap.set('n', '<leader>g', ':Telescope live_grep<CR>', { silent = true })
vim.keymap.set('n', '<leader>b', ':Telescope buffers<CR>', { silent = true })
vim.keymap.set('n', '<leader>c', ':Telescope commands<CR>', { silent = true })
vim.keymap.set('n', '<leader>s', ':SessionSearch<CR>', { silent = true })
vim.keymap.set('n', '<leader>e', ':NvimTreeFindFileToggle<CR>', { silent = true })
vim.keymap.set('n', '<leader>z', ':LazyGit<CR>', { silent = true })
vim.keymap.set('n', '<leader>u', ':UndotreeToggle<CR>:UndotreeFocus<CR>', { silent = true })

-- Terminal mappings
vim.keymap.set('n', '<leader>t', ':ToggleTerm size=20<CR>', { silent = true })

-- Navegação entre janelas
vim.keymap.set('n', '<leader>h', '<C-w>h', { silent = true })
vim.keymap.set('n', '<leader>j', '<C-w>j', { silent = true })
vim.keymap.set('n', '<leader>k', '<C-w>k', { silent = true })
vim.keymap.set('n', '<leader>l', '<C-w>l', { silent = true })

-- Redimensionamento de janelas
vim.keymap.set('n', '<leader>rk', '<C-w>10-', { silent = true })
vim.keymap.set('n', '<leader>rj', '<C-w>10+', { silent = true })
vim.keymap.set('n', '<leader>rh', '<C-w>10<', { silent = true })
vim.keymap.set('n', '<leader>rl', '<C-w>10>', { silent = true })

-- LSP 
vim.keymap.set('n', '<C-k>', ':lua vim.lsp.buf.hover()<CR>', { silent = true })
vim.keymap.set('n', '<A-a>', ":lua vim.lsp.buf.code_action()<CR>", { silent = true })
vim.keymap.set('n', 'gd', ":lua vim.lsp.buf.definition()<CR>", { silent = true })
vim.keymap.set('n', 'gr', ":lua vim.lsp.buf.declaration()<CR>", { silent = true })
vim.keymap.set('n', '<A-a>', ":lua vim.lsp.buf.code_action()<CR>", { silent = true })
vim.keymap.set('n', '<C-j>', ':lua vim.diagnostic.open_float()<CR>', { silent = true })
