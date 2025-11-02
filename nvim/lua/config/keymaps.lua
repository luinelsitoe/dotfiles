-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("x", "<c-_>", "gc", { remap = true, silent = true, desc = "Toggle comment in visual modes" })
vim.keymap.set("n", "<c-_>", "gcc", { remap = true, silent = true, desc = "Toggle comment in normal mode" })

vim.keymap.set("n", "<m-c>", "<c-w>c", { remap = true, silent = true, desc = "Close current windows" })
vim.keymap.set("n", "<m-o>", "<c-w>o", { remap = true, silent = true, desc = "Close all other windows" })
vim.keymap.set("n", "<m-v>", "<c-w>v", { remap = true, silent = true, desc = "Vertical split" })
vim.keymap.set("n", "<m-s>", "<c-w>s", { remap = true, silent = true, desc = "Horizontal split" })

vim.keymap.set("n", "<m-f>", "<leader>uZ", { remap = true, silent = true, desc = "Toogle zoom mode" })

vim.keymap.del("n", "H")
vim.keymap.del("n", "L")

vim.keymap.set(
  "n",
  "<leader>oi",
  '<CMD>lua require("jdtls").organize_imports()<CR>',
  { remap = true, desc = "Organize java imports", silent = true }
)

vim.keymap.set("i", "<c-h>", "<c-w>", { remap = true, desc = "Delete previous word", silent = true })

-- vim.keymap.set("n", "<leader>e", "<CMD>Oil --float<CR>", { desc = "Open file explorer" })
