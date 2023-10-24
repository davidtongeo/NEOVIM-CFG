local base = require("configs.lsp.base")
local M = {
	--cmd = "C:\\Users\\DAVIDD\\scoop\\apps\\rust-analyzer\\current\\rust-analyzer.exe",
	capabilities = base.capabilities,
	on_attach = base.on_attach,
}
return M
