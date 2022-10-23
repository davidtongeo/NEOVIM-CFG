local packer_status_ok, packer = pcall(require, "packer")
if (not packer_status_ok) then
	print('packer is not installed.')
	return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(
	function(use)
		use { 'wbthomason/packer.nvim' }
		--LSP
		use {
			'neovim/nvim-lspconfig',
			requires = { 'onsails/lspkind-nvim', 'folke/lsp-colors.nvim' },
			config = function()
				require('configs.lsp')
			end
		}
		use {
			'onsails/lspkind-nvim',
			config = function()
				require('configs.lspkind')
			end
		}
		--Completion
		use {
			'hrsh7th/nvim-cmp',
			requires = {
				'hrsh7th/cmp-nvim-lsp',
				'hrsh7th/nvim-cmp',
				'L3MON4D3/LuaSnip',
				'rafamadriz/friendly-snippets',
				'hrsh7th/cmp-nvim-lsp-signature-help',
				'hrsh7th/cmp-buffer',
				'hrsh7th/cmp-path',
				'saadparwaiz1/cmp_luasnip'
			},
			config = function()
				require('configs.cmp')
			end,

		}
		--snippet configuration
		use {
			'L3MON4D3/LuaSnip',
			config = function()
				require('configs.luasnip')
			end
		}
		use {
			'nvim-treesitter/nvim-treesitter',
			run = ':TSUpdate',
			config = function()
				require('configs.treesitter')
			end
		}
		--pairs
		use {
			'windwp/nvim-autopairs',
			config = function()
				require("nvim-autopairs").setup {}
			end
		}
		--ColorScheme
		use {
			"EdenEast/nightfox.nvim",
			config = function()
				vim.cmd('colorscheme duskfox')
			end
		}
		--status bar
		use {
			'nvim-lualine/lualine.nvim',
			requires = { 'kyazdani42/nvim-web-devicons' },
			config = function()
				require('configs.lualine')
			end
		}
		--manson!
		use {
			"williamboman/mason.nvim",
			config = function()
				require('configs.mason')
			end
		}
		use {
			'andweeb/presence.nvim',
			config = function()
				require('configs.discord')
			end
		}
		--highlight colors
		use {
			'brenoprata10/nvim-highlight-colors',
			config = function()
				require('configs.colors')
			end
		}
		--trouble
		use {
			"folke/lsp-trouble.nvim",
			config = function()
				require('configs.trouble')
			end
		}
		use {
			'glepnir/lspsaga.nvim',
			config = function()
				require('configs.lspsaga')
			end
		}
		-- git
		use { 'kdheepak/lazygit.nvim' }
		use {
			'nvim-telescope/telescope.nvim',
			requires = { 'nvim-lua/plenary.nvim' },
			config = function()
			end
		}
		use {
			'nvim-tree/nvim-tree.lua',
			requires = {
				'nvim-tree/nvim-web-devicons',
			},
			tag = 'nightly',
			config = function()
				require('configs.nvim-tree')
			end
		}
		use {
			'folke/which-key.nvim',
			config = function()
				require('configs.which-key')
			end
		}
	end
)
