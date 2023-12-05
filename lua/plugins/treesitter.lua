return {
	"nvim-treesitter/nvim-treesitter",
	opts = function()
		return {
			highlight = {
				enable = true,
			},
			indent = {
				enable = true,
			},
			ensure_installed = {
				"lua",
				"vim",
				"java",
				"html",
				"css",
				"c",
				"cpp",
				"tsx",
				"javascript",
				"json",
				"python",
			},
			autoinstall = true,
		}
	end,
	config = function(_, opts)
		require("nvim-treesitter.configs").setup(opts)
	end,
}
