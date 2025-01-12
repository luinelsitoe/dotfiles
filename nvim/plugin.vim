call plug#begin()
    Plug 'williamboman/mason.nvim'
    Plug 'williamboman/mason-lspconfig.nvim' 
    Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
    Plug 'codota/tabnine-nvim', { 'do': './dl_binaries.sh' }
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'mfussenegger/nvim-jdtls'
    Plug 'kyazdani42/nvim-tree.lua'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'nvim-lua/plenary.nvim'  
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'akinsho/toggleterm.nvim'
    "depends on npm live-server
    Plug 'barrett-ruth/live-server.nvim'
    Plug 'rmagatti/auto-session'
    Plug 'akinsho/bufferline.nvim', { 'branch': 'main' }
    Plug 'norcalli/nvim-colorizer.lua'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    Plug 'mattn/emmet-vim'
    Plug 'hrsh7th/nvim-cmp'          
    Plug 'hrsh7th/cmp-nvim-lsp'      
    Plug 'hrsh7th/cmp-buffer'        
    Plug 'hrsh7th/cmp-path'          
    Plug 'hrsh7th/cmp-cmdline'       
    Plug 'saadparwaiz1/cmp_luasnip'  
    Plug 'L3MON4D3/LuaSnip'          
    Plug 'neovim/nvim-lspconfig'      
call plug#end()

lua require("mason").setup{}
lua require("toggleterm").setup{}
lua require('nvim-tree').setup{}
lua require('live-server').setup{}
lua require("auto-session").setup{}
colorscheme catppuccin
