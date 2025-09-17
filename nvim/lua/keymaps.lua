vim.keymap.set('n', '<c-/>', '<cmd>CommentToggle<cr>', { silent = true, desc = "Toggle comment" })
vim.keymap.set('v', '<c-/>', ":'<,'>CommentToggle<cr>", { silent = true, desc = "Toggle comment in visual mode" })

vim.keymap.set('n', '<c-up>', '<c-w>2-', { silent = true, desc = "Resize up" })
vim.keymap.set('n', '<c-down>', '<c-w>2+', { silent = true, desc = "Resize down" })
vim.keymap.set('n', '<c-left>', '<c-w>2<', { silent = true, desc = "Resize left" })
vim.keymap.set('n', '<c-right>', '<c-w>2>', { silent = true, desc = "Resize right" })

vim.keymap.set('n', '<tab>', '<cmd>bnext<cr>', { silent = true, desc = "Next buffer" })
vim.keymap.set('n', '<s-tab>', '<cmd>bprev<cr>', { silent = true, desc = "Previous buffer" })

-- LSP
vim.keymap.set('n', '<s-k>', ':lua vim.lsp.buf.hover()<cr>', { silent = true, desc = "Show documentation" })
vim.keymap.set('n', '<leader>ca', ":lua vim.lsp.buf.code_action()<cr>", { silent = true, desc = "Show code actions" })
vim.keymap.set('n', '<leader>rn', ":lua vim.lsp.buf.rename()<cr>", { silent = true, desc = "Rename" })
vim.keymap.set('n', '<leader>fc', ":lua vim.lsp.buf.format()<cr>", { silent = true, desc = "Format code with lsp" })
vim.keymap.set('n', '<c-space>', ':lua vim.lsp.buf.signature_help()<cr>', { silent = true, desc = "Show signature" })
vim.keymap.set('n', '<leader>gd', ":lua vim.lsp.buf.definition()<cr>", { silent = true, desc = "Go to definition" })
-- vim.keymap.set('n', '<leader>gs', ":lua vim.lsp.buf.declaration()<cr>", { silent = true, desc = "Go to declaration" })
vim.keymap.set('n', '<leader>gt', ":lua vim.lsp.buf.type_definition()<cr>", { silent = true, desc = "Go to type definition" })
vim.keymap.set('n', '<leader>gi', ":lua vim.lsp.buf.implementation()<cr>", { silent = true, desc = "Go to implementation" })
vim.keymap.set('n', '<leader>gr', ":lua vim.lsp.buf.references()<cr>", { silent = true, desc = "Show references" })
-- vim.keymap.set('n', '<leader>mk', "[m", { silent = true, desc = "Method start" })
-- vim.keymap.set('n', '<leader>mj', "]m", { silent = true, desc = "Method end" })

-- Diagnostics
vim.keymap.set('n', '<leader>ds', ':lua vim.diagnostic.open_float()<cr>', { silent = true, desc = "Show line diagnostic" })
vim.keymap.set('n', '<leader>db', ':lua vim.diagnostic.setloclist()<cr>', { silent = true, desc = "Show all diagnostics in the buffer" })
vim.keymap.set('n', '<leader>dp', ':lua vim.diagnostic.setqflist()<cr>', { silent = true, desc = "Show all diagnostics from the project" })

vim.keymap.set('n', '<leader>dj', ':lua vim.diagnostic.goto_next()<cr>', { silent = true, desc = "Go to next diagnostic" })
vim.keymap.set('n', '<leader>dk', ':lua vim.diagnostic.goto_prev()<cr>', { silent = true, desc = "Go to prev diagnostic" })


-- Quick fix
vim.keymap.set('n', '<leader>j', ':cnext<cr>', { silent = true, desc = "Go to next entry on quick fix list" })
vim.keymap.set('n', '<leader>k', ':cprevious<cr>', { silent = true, desc = "Go to previous entry on quick fix list" })

--JAVA
vim.keymap.set('n', '<leader>i', ':lua require("jdtls").organize_imports()<cr>', { silent = true, desc = "Organize imports in java" })

-- NAV
vim.keymap.set('n', '<c-d>', "<c-d>zz", { silent = true, desc = "Down half page and center" })
vim.keymap.set('n', '<c-u>', "<c-u>zz", { silent = true, desc = "Up half page and center" })
vim.keymap.set('n', 'n', "nzz", { silent = true, desc = "Find next ocurence and center" })
vim.keymap.set('n', 'N', "Nzz", { silent = true, desc = "Find previous ocurence and center" })
