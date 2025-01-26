colorscheme catppuccin "for colorizer 
lua << EOF
require'colorizer'.setup({
  '*'; -- Ativa para todos os tipos de arquivos
}, {
  RGB = true; 
  RRGGBB = true;
  names = false;
  RRGGBBAA = true;
  rgb_fn = true;
  hsl_fn = true;
})
require'nvim-tree'.setup {
  view = {
    width = 50,  -- Defina a largura desejada aqui
    side = 'left',  -- Pode ser 'left' ou 'right'
  },
}
require("toggleterm").setup()
require("mason").setup{}
require('live-server').setup{}
require("auto-session").setup{}
require('nvim_comment').setup()
EOF
