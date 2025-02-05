return {
    {
	"catppuccin/nvim",
	lazy = false,
	name = "catppuccin",
	priority = 1000,
	config = function ()
	    vim.cmd([[colorscheme catppuccin]])
	end
    },

    {
	"kyazdani42/nvim-tree.lua",
	config = function ()
	    require('nvim-tree').setup{
		view = {

		    width = 50,
		    side = 'left',
		}
	    }
	end
    },

    "kyazdani42/nvim-web-devicons",

    "nvim-lua/plenary.nvim",

    "nvim-telescope/telescope.nvim",

    { "barrett-ruth/live-server.nvim", config = true },

    { "rmagatti/auto-session", config = true },

    {
	'brenoprata10/nvim-highlight-colors',
	config = function ()
	    vim.opt.termguicolors = true
	    require('nvim-highlight-colors').setup({})
	end
    },

    {
	"terrortylor/nvim-comment",
	config = function ()
	    require('nvim_comment').setup{}
	end
    },

    { "akinsho/toggleterm.nvim", config = true },

    "kdheepak/lazygit.nvim",

    "mbbill/undotree",

}
