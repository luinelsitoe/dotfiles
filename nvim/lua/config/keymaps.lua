-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("x", "<c-_>", "gc", { remap = true, silent = true, desc = "Toggle comment in visual modes" })
vim.keymap.set("n", "<c-_>", "gcc", { remap = true, silent = true, desc = "Toggle comment in normal mode" })

vim.keymap.del("n", "H")
vim.keymap.del("n", "L")

vim.keymap.set(
  "n",
  "<leader>oi",
  '<CMD>lua require("jdtls").organize_imports()<CR>',
  { remap = true, desc = "Organize java imports", silent = true }
)

vim.keymap.set("i", "<c-h>", "<c-w>", { remap = true, desc = "Delete previous word", silent = true })

vim.keymap.set("n", "<leader>e", "<leader>E", { remap = true, silent = true, desc = "Explore files" })

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>/", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
