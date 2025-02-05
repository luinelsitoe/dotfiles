return {
    "neovim/nvim-lspconfig",
dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "mfussenegger/nvim-jdtls",
  },
config = function ()
    require("mason").setup()
    local lspconfig = require('lspconfig')

    --KOTLIN
    lspconfig.kotlin_language_server.setup{
	cmd = {
	    '/home/luinel/.local/share/nvim/mason/packages/kotlin-language-server/server/bin/kotlin-language-server'
	}
    }

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
		if vim.loop.fs_stat(path..'/.luarc.json') or vim.loop.fs_stat(path..'/.luarc.jsonc') then
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
    lspconfig.pyright.setup{}

    --CLANG
    lspconfig.clangd.setup{}

    --TYPESCRIPT
    lspconfig.ts_ls.setup{}

    --VUE
    lspconfig.vuels.setup{
	cmd ={ 'vls' }
    }

    --CSS
    lspconfig.cssls.setup {
	capabilities = capabilities,
    }
    --BASH
    lspconfig.bashls.setup{}
end
}
