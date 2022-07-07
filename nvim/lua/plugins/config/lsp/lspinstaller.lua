local here, lsp_installer = pcall(require, "nvim-lsp-installer")
if not here then return end

local servers = {
	"tsserver",
	"sumneko_lua",
	"cssls",
	"emmet_ls",
	"html",
}

lsp_installer.setup{
	ensure_installed = servers,
	ui = {
		icons = {
			server_installed = 'ඞ',
			server_pending = 'ﳁ',
			server_uninstalled = '',
		},
	},
}

local here_lsp, lspconfig = pcall(require, 'lspconfig')
if not here_lsp then return end

local opts = {
	on_attach = require("plugins.config.lsp.handlers").on_attach,
	capabilities = require("plugins.config.lsp.handlers").capabilities,
}

for _, i in pairs(servers)do
	lspconfig[i].setup(opts)
end
