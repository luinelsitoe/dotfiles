vim.g.mapleader = " "

vim.cmd('hi Normal ctermbg=none guibg=none')
vim.opt.clipboard = "unnamedplus"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.foldenable = true
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99
vim.opt.rtp:prepend("/home/luinel/.opam/ocaml5/share/ocp-indent/vim")
