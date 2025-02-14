vim.keymap.set('n', '<c-d>', "<c-d>zz", { silent = true, desc = "Down half page and center" })
vim.keymap.set('n', '<c-u>', "<c-u>zz", { silent = true, desc = "Up half page and center" })
vim.keymap.set('n', 'n', "nzz", { silent = true, desc = "Find next ocurence and center" })
vim.keymap.set('n', 'N', "Nzz", { silent = true, desc = "Find previous ocurence and center" })

vim.keymap.set('n', '<Tab>', ':bn<cr>', { silent = true, desc = "Next buffer" })
vim.keymap.set('n', '<s-Tab>', ':bp<cr>', { silent = true, desc = "Previous buffer" })
vim.keymap.set('t', '<a-Esc>', '<c-\\><c-n>', { silent = true, desc = "Exit terminal mode" })

vim.keymap.set('n', '<c-up>', '<c-w>10-', { silent = true, desc = "Resize up" })
vim.keymap.set('n', '<c-down>', '<c-w>10+', { silent = true, desc = "Resize down" })
vim.keymap.set('n', '<c-left>', '<c-w>10<', { silent = true, desc = "Resize left" })
vim.keymap.set('n', '<c-right>', '<c-w>10>', { silent = true, desc = "Resize right" })

-- LSP
vim.keymap.set('n', '<s-k>', ':lua vim.lsp.buf.hover()<cr>', { silent = true, desc = "Show documentation" })
vim.keymap.set('n', '<a-a>', ":lua vim.lsp.buf.code_action()<cr>", { silent = true, desc = "Show code actions" })
vim.keymap.set('n', '<a-r>', ":lua vim.lsp.buf.rename()<cr>", { silent = true, desc = "Rename" })
vim.keymap.set('n', '<a-f>', ":lua vim.lsp.buf.format()<cr>", { silent = true, desc = "Format code" })
vim.keymap.set('n', '<c-space>', ':lua vim.lsp.buf.signature_help()<cr>', { silent = true, desc = "Show signature" })
vim.keymap.set('n', 'gd', ":lua vim.lsp.buf.definition()<cr>", { silent = true, desc = "go to definition" })
vim.keymap.set('n', 'gs', ":lua vim.lsp.buf.declaration()<cr>", { silent = true, desc = "Go to declaration" })
vim.keymap.set('n', 'gt', ":lua vim.lsp.buf.type_definition()<cr>", { silent = true, desc = "Go to type definition" })
vim.keymap.set('n', 'gi', ":lua vim.lsp.buf.implementation()<cr>", { silent = true, desc = "Go to implementation" })
vim.keymap.set('n', 'gr', ":lua vim.lsp.buf.references()<cr>", { silent = true, desc = "Show references" })

-- Diagnostics
vim.keymap.set('n', '<c-j>', ':lua vim.diagnostic.open_float()<cr>',
  { silent = true, desc = "Show diagnostic on the line" })
vim.keymap.set('n', '<leader>dd', ':lua vim.diagnostic.setloclist()<cr>',
  { silent = true, desc = "Show all diagnostics in the buffer" })
vim.keymap.set('n', '<leader>da', ':lua vim.diagnostic.setqflist()<cr>',
  { silent = true, desc = "Show all diagnostics from the project" })


-- Quick fix
vim.keymap.set('n', '<leader>j', ':cnext<cr>', { silent = true, desc = "Go to next entry on quick fix list" })
vim.keymap.set('n', '<leader>k', ':cprevious<cr>', { silent = true, desc = "Go to previous entry on quick fix list" })
vim.keymap.set('n', 'ge', ':lua vim.diagnostic.goto_next()<cr>', { silent = true, desc = "Go to next diagnostic" })

--JAVA
vim.keymap.set('n', '<a-i>', ':lua require("jdtls").organize_imports()<cr>',
  { silent = true, desc = "Organize imports in java" })
