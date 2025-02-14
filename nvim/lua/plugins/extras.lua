return {
  {
    "akinsho/toggleterm.nvim",
    opts = {},
    keys = {
      {
        '<leader>t',
        '<cmd>ToggleTerm direction=float<cr>',
        desc = "Toggle terminal"
      },
      {
        '<leader>z',
        '<cmd>lua require("toggleterm.terminal").Terminal:new({ cmd = "lazygit", hidden = true, direction = "float" }):toggle()<cr>',
        desc = "Toggle terminal and open lazygit"
      }
    }
  },

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
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-tree").setup {
        view = {
          width = 50,
        }
      }
    end,
    keys = {
      { "<leader>e", "<cmd>NvimTreeFindFileToggle<cr>", desc = "Toggle file explorer" }
    }
  },

  {
    "nyoom-engineering/oxocarbon.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme oxocarbon]])
    end
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
    opts = {}
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
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    opts = {}
  },

  {
    "rmagatti/auto-session",
    opts = {},
    keys = { { '<leader>s', ':SessionSearch<cr>', desc = "Search sessions" } }
  },

  {
    "mbbill/undotree",
    keys = { { "<leader>u", ":UndotreeToggle<cr>:UndotreeFocus<cr>", desc = "Toggle undotree" } }
  },

  { "barrett-ruth/live-server.nvim", opts = {} },

  { "lewis6991/gitsigns.nvim",       opts = {} }

}
