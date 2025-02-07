return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    keys = { {
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
    keys = { { '<leader>e', '<cmd>Oil --float<cr>', desc = 'Open File explorer' } },
    lazy = false,
  },

  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme catppuccin]])
    end
  },

  {
    'romgrk/barbar.nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    init = function() vim.g.barbar_auto_setup = false end,
    opts = {},
    version = '^1.0.0',
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
    opts = {},
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
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
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
    config = true
  },

  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = true
  },

  {
    "rmagatti/auto-session",
    config = true,
    keys = { { '<leader>s', ':SessionSearch<cr>', desc = "Search sessions" } }
  },

  {
    "akinsho/toggleterm.nvim",
    config = true,
    keys = { { '<leader>t', ':ToggleTerm<cr>', desc = "Toggle terminal" } }
  },

  {
    "kdheepak/lazygit.nvim",
    keys = { { '<leader>z', ':LazyGit<cr>', desc = "Show LazyGit" } }
  },

  {
    "mbbill/undotree",
    keys = { { "<leader>u", ":UndotreeToggle<cr>:UndotreeFocus<cr>", desc = "Toggle undotree" } }
  },

  { "barrett-ruth/live-server.nvim", config = true },

  'ThePrimeagen/vim-be-good'
}
