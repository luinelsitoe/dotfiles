return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require 'nvim-treesitter.configs'.setup {
      ensure_installed = {
        "vim",         -- Suporte para a linguagem Vimscript
        "regex",       -- Suporte para expressões regulares
        "lua",         -- Suporte para Lua
        "bash",        -- Suporte para Bash
        "markdown",    -- Suporte para Markdown
        "markdown_inline", -- Suporte para Markdown Inline
      },
      auto_install = true,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      incremental_selection = {
        enable = true,
      },
    }
    vim.wo.foldmethod = 'expr'
    vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
  end
}
