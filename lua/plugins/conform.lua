return {
	"stevearc/conform.nvim",
	opts = function()
		return {
			formatters_by_ft = {
				cs = { "clang_format" },
				lua = { "stylua" },
				cpp = { "clang_format" },
			},
			format_on_save = {
				timeout_ms = 1000,
				lsp_fallback = true,
			},
		}
	end,
	config = function(_, opts)
		require("conform").setup(opts)
	end,
}
