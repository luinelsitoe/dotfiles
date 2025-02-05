return {
    {
        "kyazdani42/nvim-tree.lua",
        lazy = false,
        config = function()
            require('nvim-tree').setup {
                view = {
                    width = 50,
                    side = 'left',
                }
            }
        end,
        keys = { { '<leader>e', ':NvimTreeFindFileToggle<cr>', desc = "Toggle file explorer" } }
    },

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
        "catppuccin/nvim",
        lazy = false,
        name = "catppuccin",
        priority = 1000,
        config = function()
            vim.cmd([[colorscheme catppuccin]])
        end
    },

    {
        "romgrk/barbar.nvim",
        dependencies = "nvim-tree/nvim-web-devicons",
        config = function()
            require("barbar").setup {
                animation = true,
                auto_hide = true,
            }
        end
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

    { "barrett-ruth/live-server.nvim", config = true },

    {
        "rmagatti/auto-session",
        config = true,
        keys = { { '<leader>s', ':SessionSearch<cr>', desc = "Search sessions" } }
    },

    {
        "akinsho/toggleterm.nvim",
        config = true,
        keys = { { '<leader>t', ':ToggleTerm size=20<cr>', desc = "Toggle terminal" } }
    },

    {
        "kdheepak/lazygit.nvim",
        keys = { { '<leader>z', ':LazyGit<cr>', desc = "Show LazyGit" } }
    },

    {
        "mbbill/undotree",
        keys = { { "<leader>u", ":UndotreeToggle<cr>:UndotreeFocus<cr>", desc = "Toggle undotree" } }
    }

}
