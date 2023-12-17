return {
	"neovim/nvim-lspconfig",
	dependencies = {
		{ "folke/neoconf.nvim", cmd = "Neoconf", config = false, dependencies = { "nvim-lspconfig" } },
		{ "folke/neodev.nvim", opts = {} },
	},
	opts = function()
		local base = require("plugins.lsp.base")
		return {
			capabilities = base.capabilities,
			on_attach = base.on_attach,
		}
	end,
	config = function(_, opts)
		local lspconfig = require("lspconfig")
		-- setups
		lspconfig.lua_ls.setup(opts)
		lspconfig.tsserver.setup(opts)
		lspconfig.cssls.setup(opts)
		lspconfig.tailwindcss.setup(opts)
	end,
}
