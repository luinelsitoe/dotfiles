-- Configurações gerais
vim.g.mapleader = " "
vim.opt.clipboard = 'unnamedplus'
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 4
vim.cmd('hi Normal ctermbg=none guibg=none')

-- Mapeamentos normais
vim.keymap.set('n', '<leader>q', ':bd<CR>', { silent = true, desc = "Quit window" })
vim.keymap.set('n', '<Tab>', ':bn<CR>', { silent = true , desc = "Next buffer"})
vim.keymap.set('n', '<S-Tab>', ':bp<CR>', { silent = true, desc = "Previous buffer" })
-- Mapeamento no terminal
vim.keymap.set('t', '<A-Esc>', '<c-\\><c-n>', { silent = true, desc = "Exit terminal mode"})

-- Corrigir sessão salva automaticamente
vim.api.nvim_create_autocmd('VimEnter', {
    pattern = '*',
    command = 'SessionDelete /home/luinel'
})

-- Mapeamentos de alguns Plugins
vim.keymap.set('n', '<leader>f', ':Telescope find_files<CR>', { silent = true , desc = "Find files"})
vim.keymap.set('n', '<leader>g', ':Telescope live_grep<CR>', { silent = true, desc = "Search in files" })
vim.keymap.set('n', '<leader>b', ':Telescope buffers<CR>', { silent = true, desc = "Find buffers"})
vim.keymap.set('n', '<leader>c', ':Telescope commands<CR>', { silent = true, desc = "Find commands"})
vim.keymap.set('n', '<leader>s', ':SessionSearch<CR>', { silent = true, desc = "Search sessions" })
vim.keymap.set('n', '<leader>e', ':NvimTreeFindFileToggle<CR>', { silent = true, desc = "Toggle file explorer" })
vim.keymap.set('n', '<leader>z', ':LazyGit<CR>', { silent = true, desc = "Show LazyGit" })
vim.keymap.set('n', '<leader>u', ':UndotreeToggle<CR>:UndotreeFocus<CR>', { silent = true , desc = "Show undo tree"})

-- Terminal mappings
vim.keymap.set('n', '<leader>t', ':ToggleTerm size=20<CR>', { silent = true, desc = "Toggle terminal"})

-- Navegação entre janelas
vim.keymap.set('n', '<leader>h', '<c-w>h', { silent = true , desc = "Go to left window"})
vim.keymap.set('n', '<leader>j', '<c-w>j', { silent = true, desc = "Go to down window"})
vim.keymap.set('n', '<leader>k', '<c-w>k', { silent = true, desc = "Go to up window"})
vim.keymap.set('n', '<leader>l', '<c-w>l', { silent = true, desc = "Go to right window"})

-- Redimensionamento de janelas
vim.keymap.set('n', '<leader>rk', '<c-w>10-', { silent = true, desc = "Resize up"})
vim.keymap.set('n', '<leader>rj', '<c-w>10+', { silent = true, desc = "Resize down" })
vim.keymap.set('n', '<leader>rh', '<c-w>10<', { silent = true, desc = "Resize left" })
vim.keymap.set('n', '<leader>rl', '<c-w>10>', { silent = true, desc = "Resize right" })

-- LSP 
vim.keymap.set('n', '<c-k>', ':lua vim.lsp.buf.hover()<CR>', { silent = true, desc = "Show documentation" })
vim.keymap.set('n', '<A-a>', ":lua vim.lsp.buf.code_action()<CR>", { silent = true, desc = "Show code actions"})
vim.keymap.set('n', '<A-r>', ":lua vim.lsp.buf.rename()<CR>", { silent = true, desc = "Rename" })
vim.keymap.set('n', 'gd', ":lua vim.lsp.buf.definition()<CR>", { silent = true, desc = "Go to definition" })
vim.keymap.set('n', 'gi', ":lua vim.lsp.buf.implementation()<CR>", { silent = true, desc = "Go to implementation" })
vim.keymap.set('n', 'gt', ":lua vim.lsp.buf.type_definition()", { silent = true, desc = "Go to type definition" })
vim.keymap.set('n', 'gr', ":lua vim.lsp.buf.references()<CR>", { silent = true, desc = "Show references" })

-- Diagnostics
vim.keymap.set('n', '<c-j>', ':lua vim.diagnostic.open_float()<CR>', { silent = true, desc = "Show diagnostic on the line" })
vim.keymap.set('n', '<c-l>', ':lua vim.diagnostic.setloclist()<CR>', { silent = true, desc = "Show all diagnostics" })

-- Quick fix
vim.keymap.set('n', '[c', 'cprevious', { silent = true, desc = "Go to previous entry on quick fix list" })
vim.keymap.set('n', ']c', 'cnext', { silent = true, desc = "Go to next entry on quick fix list" })

