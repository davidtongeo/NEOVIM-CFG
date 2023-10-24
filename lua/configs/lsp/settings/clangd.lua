local base = require('configs.lsp.base')

local opts = {
	on_attach = base.on_attach,
	cmd = { "clangd", "--offset-encoding=utf-16" },
	capabilities = base.capabilities
}
return opts
