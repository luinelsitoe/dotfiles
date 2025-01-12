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
EOF
