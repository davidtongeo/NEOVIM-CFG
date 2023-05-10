-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
	-- lsp related...
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("configs.lsp")
		end,
	},
	{
		"folke/lsp-trouble.nvim",
		dependencies = "neovim/nvim-lspconfig",
		config = function()
			require("configs.trouble")
		end,
	},
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		config = function()
			require("configs.telescope")
		end,
	},
	{
		"glepnir/lspsaga.nvim",
		dependencies = {
			"neovim/nvim-lspconfig",
			"nvim-telescope/telescope.nvim",
		},
		config = function()
			require("configs.lspsaga")
		end,
	},
	{
		"jose-elias-alvarez/null-ls.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		config = function()
			require("configs.null-ls")
		end,
	},
	{
		"onsails/lspkind-nvim",
	},
	{
		"ray-x/lsp_signature.nvim",
	},
	-- highlight
	{
		"nvim-treesitter/nvim-treesitter",
		config = function()
			require("configs.tree-sitter")
		end,
	},
	-- completion
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/nvim-cmp",
			"L3MON4D3/LuaSnip",
			"rafamadriz/friendly-snippets",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"saadparwaiz1/cmp_luasnip",
		},
		config = function()
			require("configs.cmp")
		end,
	},
	{
		"L3MON4D3/LuaSnip",
	},

	-- UI related...

	-- Coloscheme

	{
		"folke/tokyonight.nvim",
		config = function()
			require("colorscheme")
		end,
	},
	-- Misc UI
	{
		"brenoprata10/nvim-highlight-colors",
	},
	{
		"lukas-reineke/indent-blankline.nvim",
	},
	-- Status line
	{
		"nvim-lualine/lualine.nvim",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			require("configs.statusline")
		end,
	},
	{
		"j-hui/fidget.nvim",
		config = function()
			require("configs.fidget")
		end,
	},
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		tag = "nightly",
		config = function()
			require("configs.nvim-tree")
		end,
	},

	-- Langs related
	{
		"williamboman/mason.nvim",
		config = function()
			require("configs.mason")
		end,
	},
	{
		"mfussenegger/nvim-jdtls",
	},

	-- Utilities
	{
		"folke/which-key.nvim",
		config = function()
			require("configs.which-key")
		end,
	},
	{
		"ThePrimeagen/harpoon",
		dependencies = "nvim-lua/plenary.nvim",
		config = function()
			require("configs.harpoon")
		end,
	},
})
