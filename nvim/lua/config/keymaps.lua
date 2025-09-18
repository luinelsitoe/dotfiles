-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>e", "<CMD>Oil<CR>", { desc = "Open parent directory" })

vim.keymap.set("n", "<c-_>", "<cmd>CommentToggle<cr>", { silent = true, desc = "Toggle comment" })
vim.keymap.set("v", "<c-_>", ":'<,'>CommentToggle<cr>", { silent = true, desc = "Toggle comment in visual mode" })
