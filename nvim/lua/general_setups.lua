vim.opt.termguicolors = true
vim.cmd('colorscheme catppuccin')
require'colorizer'.setup({
  '*';
}, {
  RGB = true; RRGGBB = true;
  names = false;
  RRGGBBAA = true;
  rgb_fn = true;
  hsl_fn = true;
})

require'nvim-tree'.setup {
  view = {
    width = 50,
    side = 'left',
  },
}

require("toggleterm").setup{}
require("mason").setup{}
require('live-server').setup{}
require("auto-session").setup{}
require('nvim_comment').setup{}
