local base = require('configs.lsp.base')
local path = "C:/Users/DAVIDD/AppData/Local/nvim-data/mason/packages/omnisharp/libexec/OmniSharp.exe"
local pid = vim.fn.getpid()
local opts = {
	on_attach = base.on_attach,
	cmd = { path , "--languageserver", "--hostPID", tostring(pid)},
	handlers = {
		["textDocument/definition"] = require('omnisharp_extended').handler,
	},
	capabilities = base.capabilities
}
return opts
