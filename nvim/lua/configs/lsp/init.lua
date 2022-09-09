--import the base & lsp
local status_base, base = pcall(require, 'configs.lsp.base')
local status_lsp, lspconfig = pcall(require, 'lspconfig')
--check the modules 
if(not status_lsp)then return end
if (not status_base)then return end

--setups servers manually
lspconfig.html.setup{
	on_attach = base.on_attach,
	capabilities = base.capabilities
}
lspconfig.tsserver.setup{
	on_attach = base.on_attach,
	capabilities = base.capabilities,
	cmd = { "typescript-language-server", "--stdio" }
}
lspconfig.sumneko_lua.setup{
	on_attach = base.on_attach,
	capabilities = base.capabilities
}
lspconfig.cssls.setup{
	on_attach = base.on_attach,
	capabilities = base.capabilities
}
lspconfig.pyright.setup{
	on_attach = base.on_attach,
	capabilities = base.capabilities
}
