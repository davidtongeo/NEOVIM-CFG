return {
	"ThePrimeagen/harpoon",
	dependencies = { "nvim-lua/plenary.nvim" },
	keys = {
		{
			"<leader>hw",
			[[<cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>]],
		},
		{
			"<leader>ha",
			[[<cmd>lua require("harpoon.mark").add_file()<cr>]],
		},
	},
}
