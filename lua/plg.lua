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
	-- lsp related
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
		"nvim-telescope/telescope-fzf-native.nvim",
		build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		config = function()
			require("configs.telescope")
		end,
	},
	{
		"mfussenegger/nvim-jdtls",
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
		"stevearc/conform.nvim",
		config = function()
			require("configs.conform")
		end,
	},
	{
		"onsails/lspkind-nvim",
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
		"craftzdog/solarized-osaka.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
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
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
			"3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
		},
		cmd = [[Neotree toggle]],
		init = function()
			require("neo-tree")
		end,
		keys = {
			{
				"<Leader>n",
				function()
					require("neo-tree.command").execute({ toggle = true, dir = vim.loop.cwd() })
				end,
				desc = "toggle tree",
			},
		},
		config = function()
			require("configs.neo-tree")
		end,
	},
	{
		"j-hui/fidget.nvim",
		tag = "legacy",
		config = function()
			require("configs.fidget")
		end,
	},
	{
		"Hoffs/omnisharp-extended-lsp.nvim",
	},
	{
		"folke/noice.nvim",
		opts = {},
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
		config = function()
			require("noice").setup({
				lsp = {
					-- override markdown rendering so that **cmp** and other plugins use **Treesitter**
					override = {
						["vim.lsp.util.convert_input_to_markdown_lines"] = true,
						["vim.lsp.util.stylize_markdown"] = true,
						["cmp.entry.get_documentation"] = true,
					},
				},
				-- you can enable a preset for easier configuration
				presets = {
					bottom_search = true, -- use a classic bottom cmdline for search
					command_palette = true, -- position the cmdline and popupmenu together
					long_message_to_split = true, -- long messages will be sent to a split
					inc_rename = false, -- enables an input dialog for inc-rename.nvim
					lsp_doc_border = false, -- add a border to hover docs and signature help
				},
			})
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
