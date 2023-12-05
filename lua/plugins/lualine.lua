return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		{
			"linrongbin16/lsp-progress.nvim",
			dependencies = { "nvim-tree/nvim-web-devicons" },
			config = function()
				require("lsp-progress").setup({
					max_size = 40,
				})
			end,
		},
	},
	opts = function()
		return {
			options = {
				thene = "auto",
			},
			sections = {
				lualine_c = {
					-- invoke `progress` here.
					require("lsp-progress").progress,
				},
			},
		}
	end,
	config = function(_, opts)
		require("lualine").setup(opts)
	end,
}
