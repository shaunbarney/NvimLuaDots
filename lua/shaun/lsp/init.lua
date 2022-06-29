local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("shaun.lsp.lsp-installer")
require("shaun.lsp.handlers").setup()
require("shaun.lsp.null-ls")
