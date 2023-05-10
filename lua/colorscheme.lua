vim.o.background = "dark" -- or "light" for light mode
-- setup must be called before loading the colorscheme
-- Default options:
require("tokyonight").setup({
	transparent = true,
	styles = {
		-- Style to be applied to different syntax groups
		-- Value is any valid attr-list value for `:help nvim_set_hl`
		comments = { italic = true },
		keywords = { italic = true },
		-- Background styles. Can be "dark", "transparent" or "normal"
		sidebars = "dark", -- style for sidebars, see below
		floats = "dark", -- style for floating windows
	},
})
vim.cmd("colorscheme tokyonight-night")
