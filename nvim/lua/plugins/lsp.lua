return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "mfussenegger/nvim-jdtls",
  },
  config = function()
    require("mason").setup()
    local lspconfig = require('lspconfig')

    --HTML
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities.textDocument.completion.completionItem.snippetSupport = true
    lspconfig.html.setup {
      capabilities = capabilities,
    }

    --LUA
    lspconfig.lua_ls.setup {
      on_init = function(client)
        if client.workspace_folders then
          local path = client.workspace_folders[1].name
          if vim.loop.fs_stat(path .. '/.luarc.json') or vim.loop.fs_stat(path .. '/.luarc.jsonc') then
            return
          end
        end

        client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
          runtime = {
            version = '5.4'
          },
          workspace = {
            checkThirdParty = false,
            library = {
              vim.env.VIMRUNTIME,
            }
          }
        })
      end,
      settings = {
        Lua = {}
      }
    }

    --PYRIGHT
    lspconfig.pyright.setup {}

    --CLANG
    lspconfig.clangd.setup {}

    --CSHARP
    lspconfig.csharp_ls.setup {}

    --TYPESCRIPT + VUE
    require 'lspconfig'.volar.setup {}
    lspconfig.ts_ls.setup {
      init_options = {
        plugins = {
          {
            name = "@vue/typescript-plugin",
            location = "/usr/local/lib/node_modules/@vue/typescript-plugin",
            languages = { "javascript", "typescript", "vue" },
          },
        },
      },
      filetypes = {
        "javascript",
        "typescript",
        "vue",
      },
    }

    --CSS
    lspconfig.cssls.setup {
      capabilities = capabilities,
    }

    lspconfig.ocamllsp.setup {}

    --BASH
    lspconfig.bashls.setup {}
  end
}
