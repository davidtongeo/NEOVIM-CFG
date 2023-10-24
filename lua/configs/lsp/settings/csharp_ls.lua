local base = require('configs.lsp.base')
local util = require("lspconfig.util")
local opts = {
	on_attach = base.on_attach,
	capabilities = base.capabilities
	root_dir = util.root_pattern(".git", ".sln")
}
return opts
