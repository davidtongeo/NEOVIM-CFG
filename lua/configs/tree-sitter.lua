local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
	return
end

require("nvim-treesitter.install").compilers = { "clang" }
treesitter.setup({
	highlight = {
		enable = true,
		disable = {},
		additional_vim_regex_highlighting = { "org" },
	},
	indent = {
		enable = true,
		disable = {
			"gdscript",
		},
	},
	ensure_installed = {
		"lua",
		"vim",
		"java",
		"html",
		"css",
		"tsx",
		"javascript",
		"json",
		"python",
	},
	autoinstall = true,
})
