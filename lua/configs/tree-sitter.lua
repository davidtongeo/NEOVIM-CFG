local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
	return
end

if (vim.loop.os_uname().sysname == "Linux") then
	require("nvim-treesitter.install").compilers = { "gcc" }
else 
	require("nvim-treesitter.install").compilers = { "clang" }
end

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
		"c",
		"cpp",
		"tsx",
		"javascript",
		"json",
		"python",
	},
	autoinstall = true,
})
