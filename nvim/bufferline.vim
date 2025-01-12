lua << EOF
require("bufferline").setup({
  highlights = {
    buffer_selected = { fg = "#F28FAD", bold = true }, 
    buffer_visible = { fg = "#7F849C" },              
    background = { fg = "#5C6370" },                 
  },
})
EOF
