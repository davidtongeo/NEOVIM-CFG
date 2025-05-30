return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	opts = {},
	-- Optional dependencies
	dependencies = { { "echasnovski/mini.icons", opts = {} } },
	-- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
	-- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
	lazy = false,
	keys = {},
	config = function()
		require("oil").setup({
			default_file_explorer = true,
		})
		vim.keymap.set("n", "<leader>n", function()
			vim.cmd((vim.bo.filetype == "oil") and "bd" or "Oil")
		end)
	end,
}
