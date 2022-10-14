local base = require('configs.lsp.base')

local opts = {
	on_attach = base.on_attach,
	cmd = {'dotnet', "C:\\Users\\DAVID\\AppData\\Local\\nvim-data\\mason\\packages\\omnisharp\\OmniSharp.dll"},
	capabilities = base.capabilities
}
return opts
