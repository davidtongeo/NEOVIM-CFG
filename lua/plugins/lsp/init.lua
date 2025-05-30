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
		require("neoconf").setup() -- setup neodev
		local lspconfig = require("lspconfig")
		-- setups
		lspconfig.lua_ls.setup(opts)
		lspconfig.csharp_ls.setup(opts)
		lspconfig.html.setup(opts)
		--lspconfig.ts_ls.setup(opts)
		lspconfig.cssls.setup(opts)
		lspconfig.gopls.setup(opts)
		lspconfig.gopls.setup(opts)
		lspconfig.gdscript.setup(opts)
		lspconfig.basedpyright.setup(opts)
		lspconfig.svelte.setup(opts)
	end,
}
