local lspconfig = require('lspconfig')

--KOTLIN
require'lspconfig'.kotlin_language_server.setup{
    cmd = {
	'/home/luinel/.local/share/nvim/mason/packages/kotlin-language-server/server/bin/kotlin-language-server'
    }
}

--HTML
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
require'lspconfig'.html.setup {
  capabilities = capabilities,
}

--LUA
require'lspconfig'.lua_ls.setup {
  on_init = function(client)
    if client.workspace_folders then
      local path = client.workspace_folders[1].name
      if vim.loop.fs_stat(path..'/.luarc.json') or vim.loop.fs_stat(path..'/.luarc.jsonc') then
        return
      end
    end

    client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
      runtime = {
        version = 'LuaJIT'
      },
      workspace = {
        checkThirdParty = false,
        library = {
          vim.env.VIMRUNTIME
        }
      }
    })
  end,
  settings = {
    Lua = {}
  }
}

--PYRIGHT
require'lspconfig'.pyright.setup{}

--CLANG
require'lspconfig'.clangd.setup{}

--TYPESCRIPT
require'lspconfig'.ts_ls.setup{}

--VUE
require'lspconfig'.vuels.setup{ 
  cmd ={ 'vls' }
}

--CSS
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
require'lspconfig'.cssls.setup {
  capabilities = capabilities,
}
--BASH
require'lspconfig'.bashls.setup{}
