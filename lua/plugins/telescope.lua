return {
	"nvim-telescope/telescope-fzf-native.nvim",
	build = "make",
	dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
	opts = function()
		return {
			extensions = {
				fzf = {
					fuzzy = true, -- false will only do exact matching
					override_generic_sorter = true, -- override the generic sorter
					override_file_sorter = true, -- override the file sorter
					case_mode = "smart_case", -- or "ignore_case" or "respect_case"
					-- the default case_mode is "smart_case"
				},
			},
		}
	end,
	config = function(_, opts)
		require("telescope").setup(opts)
		require("telescope").load_extension("fzf")
	end,
	keys = {
		{
			"<leader>a",
			"<cmd>Telescope find_files<cr>",
		},
		{
			"<leader>lr",
			"<cmd>Telescope lsp_references<cr>",
		},
	},
}
