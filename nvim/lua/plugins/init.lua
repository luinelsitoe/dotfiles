return {
  -- Gerenciador de LSPs
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",

  -- Temas
  { "catppuccin/nvim", name = "catppuccin" },
  "dracula/vim",

  -- Treesitter
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

  -- Suporte a Java
  "mfussenegger/nvim-jdtls",

  -- Gerenciador de arquivos
  "kyazdani42/nvim-tree.lua",
  "kyazdani42/nvim-web-devicons",

  -- Dependências Lua
  "nvim-lua/plenary.nvim",

  -- Fuzzy finder
  "nvim-telescope/telescope.nvim",

  -- Live Server (depende do npm live-server)
  "barrett-ruth/live-server.nvim",

  -- Sessões automáticas
  "rmagatti/auto-session",

  -- Colorizer
  "norcalli/nvim-colorizer.lua",

  -- Emmet para HTML
  "mattn/emmet-vim",

  -- Comentários rápidos
  "terrortylor/nvim-comment",

  -- Terminal embutido
  "akinsho/toggleterm.nvim",

  -- Integração com Lazygit
  "kdheepak/lazygit.nvim",

  -- Histórico de desfazer
  "mbbill/undotree",

  -- Autocompletar
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-cmdline",
  "saadparwaiz1/cmp_luasnip",
  "L3MON4D3/LuaSnip",
}
