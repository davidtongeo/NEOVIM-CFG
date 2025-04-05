return {
	"ray-x/lsp_signature.nvim",
	event = "InsertEnter",
	opts = function()
		return {
			bind = true,
			handler_opts = {
				border = "rounded",
			},
		}
	end,
	config = function(_, opts)
		require("lsp_signature").setup(opts)
	end,
}
