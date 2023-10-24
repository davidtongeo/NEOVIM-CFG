local path = "C:/Users/DAVIDD/AppData/Local/nvim-data/mason/bin/cmake-language-server.cmd"

local base = require("configs.lsp.base")
local opts = {
	on_attach = base.on_attach,
	cmd = { path },
	filetypes = { "cmake" , "CMakeLists.txt" }
	capabilities = base.capabilities,
}
return opts
