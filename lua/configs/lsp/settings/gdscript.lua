local base = require('configs.lsp.base')

local opts = {
	on_attach = base.on_attach,
	cmd = { "ncat", "localhost", "8080" },
	capabilities = base.capabilities
}
return opts
