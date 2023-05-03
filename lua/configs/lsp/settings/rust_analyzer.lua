local base = require ('configs.lsp.base')
local M = {
	capabilities = base.capabilities,
	on_attach = base.on_attach,
    cmd = {"rustup", "run", "stable", "rust-analyzer"}
}
return M;
