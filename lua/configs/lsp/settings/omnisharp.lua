local base = require('configs.lsp.base')

local opts = {
	on_attach = base.on_attach,
	cmd = { "dotnet", "/home/david/.local/share/nvim/mason/packages/omnisharp/OmniSharp.dll" },
	capabilities = base.capabilities
}
return opts
