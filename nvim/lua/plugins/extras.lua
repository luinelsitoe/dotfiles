return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {},
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps (which-key)",
      },
    },
  },

  {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {},
    dependencies = { "nvim-tree/nvim-web-devicons" },
    lazy = false,
    keys = {
      { '<leader>e', '<cmd>Oil --float<cr>', desc = 'Open file explorer' }
    }
  },

  {
    'brenoprata10/nvim-highlight-colors',
    config = function()
      vim.opt.termguicolors = true
      require('nvim-highlight-colors').setup({})
    end
  },

  {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {},
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
    opts = {},
  },

  {
    "terrortylor/nvim-comment",
    config = function()
      require('nvim_comment').setup {}
    end
  },

  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {}
  },

  {
    "lewis6991/gitsigns.nvim",
    opts = {},
    lazy = false,
    keys = { { "<leader>h", "<cmd>Gitsigns preview_hunk<cr>", desc = "Preview hunk" } }
  },

  {
    "mbbill/undotree",
    keys = { { "<leader>u", ":UndotreeToggle<cr>:UndotreeFocus<cr>", desc = "Toggle undotree" } }
  },
}
