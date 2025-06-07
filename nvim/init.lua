require("config.lazy")
require('keymaps')
require("options")
require("ui")

-- ###### REMOVER #######
-- Sobrescreve o sistema de notificação do Neovim
local original_notify = vim.notify
vim.notify = function(msg, level, opts)
  if type(msg) == "string" and msg:find("textDocument/documentColor") then
    return -- Bloqueia totalmente a mensagem
  end
  return original_notify(msg, level, opts)
end

-- Filtra mensagens LSP diretamente
vim.api.nvim_create_autocmd("LspDetach", {
  callback = function(args)
    local client_id = args.data.client_id
    local client = vim.lsp.get_client_by_id(client_id)
    if client and client.name == "hls" then
      client.handlers['window/showMessage'] = function(_, result, ...)
        if result.message:find("documentColor") then
          return -- Ignora
        end
        return vim.lsp.handlers['window/showMessage'](_, result, ...)
      end
    end
  end,
})
-- ###### REMOVER #######
