vim.keymap.set('n', '<c-d>', "<c-d>zz", { silent = true, desc = "Down half page and center" })
vim.keymap.set('n', '<c-u>', "<c-u>zz", { silent = true, desc = "Up half page and center" })
vim.keymap.set('n', 'n', "nzz", { silent = true, desc = "Find next ocurence and center" })
vim.keymap.set('n', 'N', "Nzz", { silent = true, desc = "Find previous ocurence and center" })

vim.keymap.set('n', '<Tab>', ':bn<cr>', { silent = true, desc = "Next buffer" })
vim.keymap.set('n', '<S-Tab>', ':bp<cr>', { silent = true, desc = "Previous buffer" })
vim.keymap.set('t', '<A-Esc>', '<c-\\><c-n>', { silent = true, desc = "Exit terminal mode" })

-- Windows
vim.keymap.set('n', '<leader>h', '<c-w>h', { silent = true, desc = "Go to left window" })
vim.keymap.set('n', '<leader>j', '<c-w>j', { silent = true, desc = "Go to down window" })
vim.keymap.set('n', '<leader>k', '<c-w>k', { silent = true, desc = "Go to up window" })
vim.keymap.set('n', '<leader>l', '<c-w>l', { silent = true, desc = "Go to right window" })
vim.keymap.set('n', '<leader>o', '<c-w>o', { silent = true, desc = "Close all other windows" })
vim.keymap.set('n', '<leader>c', '<c-w>c', { silent = true, desc = "Close window" })
vim.keymap.set('n', '<leader>rk', '<c-w>10-', { silent = true, desc = "Resize up" })
vim.keymap.set('n', '<leader>rj', '<c-w>10+', { silent = true, desc = "Resize down" })
vim.keymap.set('n', '<leader>rh', '<c-w>10<', { silent = true, desc = "Resize left" })
vim.keymap.set('n', '<leader>rl', '<c-w>10>', { silent = true, desc = "Resize right" })

-- LSP
vim.keymap.set('n', '<c-k>', ':lua vim.lsp.buf.hover()<cr>', { silent = true, desc = "Show documentation" })
vim.keymap.set('n', '<a-a>', ":lua vim.lsp.buf.code_action()<cr>", { silent = true, desc = "Show code actions" })
vim.keymap.set('n', '<a-r>', ":lua vim.lsp.buf.rename()<cr>", { silent = true, desc = "Rename" })
vim.keymap.set('n', '<a-f>', ":lua vim.lsp.buf.format()<cr>", { silent = true, desc = "Format code" })
vim.keymap.set('n', '<c-space>', ':lua vim.lsp.buf.signature_help()<cr>', { silent = true, desc = "Show signature" })
vim.keymap.set('n', 'gdd', ":lua vim.lsp.buf.definition()<cr>", { silent = true, desc = "Go to definition" })
vim.keymap.set('n', 'gdr', ":lua vim.lsp.buf.declaration()<cr>", { silent = true, desc = "Go to declaration" })
vim.keymap.set('n', 'gt', ":lua vim.lsp.buf.type_definition()<cr>", { silent = true, desc = "Go to type definition" })
vim.keymap.set('n', 'gi', ":lua vim.lsp.buf.implementation()<cr>", { silent = true, desc = "Go to implementation" })
vim.keymap.set('n', 'gr', ":lua vim.lsp.buf.references()<cr>", { silent = true, desc = "Show references" })

-- Diagnostics
vim.keymap.set('n', '<c-j>', ':lua vim.diagnostic.open_float()<cr>',
  { silent = true, desc = "Show diagnostic on the line" })
vim.keymap.set('n', '<leader>dd', ':lua vim.diagnostic.setloclist()<cr>', { silent = true, desc = "Show all diagnostics in the buffer" })
vim.keymap.set('n', '<leader>da', ':lua vim.diagnostic.setqflist()<cr>', { silent = true, desc = "Show all diagnostics from the project" })


-- Quick fix
vim.keymap.set('n', 'gj', ':cnext<cr>', { silent = true, desc = "Go to next entry on quick fix list" })
vim.keymap.set('n', 'gk', ':cprevious<cr>', { silent = true, desc = "Go to previous entry on quick fix list" })
vim.keymap.set('n', 'ge', ':lua vim.diagnostic.goto_next()<cr>', { silent = true, desc = "Go to next diagnostic" })
