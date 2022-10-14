local status, treesitter = pcall(require, 'nvim-treesitter.configs')
if not status then return end

require 'nvim-treesitter.install'.compilers = { "clang" }
treesitter.setup{
	highlight = {
		enable = true,
		disable = {},
	},
	indent = {
		enable = true,
		disable = {},

	},
	ensure_installed = {
		'lua',
		'html',
		'css',
		'tsx',
		'javascript',
		'c_sharp',
		'json',
		'python',
	},
	autoinstall = true,
}

