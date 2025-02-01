call plug#begin()
    Plug 'williamboman/mason.nvim'
    Plug 'williamboman/mason-lspconfig.nvim' 
    Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
    Plug 'dracula/vim'  
    Plug 'codota/tabnine-nvim', { 'do': './dl_binaries.sh' }
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'mfussenegger/nvim-jdtls'
    Plug 'kyazdani42/nvim-tree.lua'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'nvim-lua/plenary.nvim'  
    Plug 'nvim-telescope/telescope.nvim'
    "depends on npm live-server
    Plug 'barrett-ruth/live-server.nvim'
    Plug 'rmagatti/auto-session'
    Plug 'norcalli/nvim-colorizer.lua'
    Plug 'mattn/emmet-vim'
    Plug 'terrortylor/nvim-comment'
    Plug 'akinsho/toggleterm.nvim'
    Plug 'kdheepak/lazygit.nvim'
    Plug 'ThePrimeagen/harpoon', { 'branch': 'harpoon2' }

    Plug 'hrsh7th/nvim-cmp'          
    Plug 'hrsh7th/cmp-nvim-lsp'      
    Plug 'hrsh7th/cmp-buffer'        
    Plug 'hrsh7th/cmp-path'          
    Plug 'hrsh7th/cmp-cmdline'       
    Plug 'saadparwaiz1/cmp_luasnip'  
    Plug 'L3MON4D3/LuaSnip'          
    Plug 'neovim/nvim-lspconfig'      
    call plug#end()
