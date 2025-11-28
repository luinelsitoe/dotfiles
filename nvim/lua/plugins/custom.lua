return {
  { "akinsho/bufferline.nvim", enabled = false },

  { "folke/flash.nvim", enabled = false },

  {
    "saghen/blink.cmp",
    opts = function(_, opts)
      -- desativar o menu automático
      opts.completion = opts.completion or {}
      opts.completion.menu = opts.completion.menu or {}
      opts.completion.menu.auto_show = false

      -- desativar seleção / auto-inserção
      -- opts.completion.list = opts.completion.list or {}
      -- opts.completion.list.selection = {
      --   preselect = false,
      --   auto_insert = false,
      -- }
      return opts
    end,
  },

  { "mfussenegger/nvim-lint", enabled = false },
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        enabled = false,
      },
    },
  },
  { "folke/noice.nvim", enabled = false },

  {
    "nvim-lualine/lualine.nvim",
    enabled = false,
  },
}
