lua << EOF
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
EOF
