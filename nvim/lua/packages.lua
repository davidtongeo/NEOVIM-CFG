local packer_status_ok, packer = pcall(require, "packer")
if(not packer_status_ok) then
	print('packer is not installed.')
	return 
end	

vim.cmd [[packadd packer.nvim]]

packer.startup(
function(use)
	use{'wbthomason/packer.nvim'}
	--LSP
	use{
		'neovim/nvim-lspconfig',
		requires = 'onsails/lspkind-nvim',
		config = function()
			require('configs.lsp')
		end
	}
	--Completion
	use{
		'hrsh7th/nvim-cmp',
		requires = {
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/nvim-cmp',
			'L3MON4D3/LuaSnip',
			'rafamadriz/friendly-snippets',
			'hrsh7th/cmp-nvim-lsp-signature-help',
			'hrsh7th/cmp-buffer',
			'hrsh7th/cmp-path'
		},
		config = function()
			require('configs.cmp')
		end,

	}
	--pairs
	use{
		'windwp/nvim-autopairs',
		config = function()
			require("nvim-autopairs").setup{}
		end
	}
	--ColorScheme
	use{
		"EdenEast/nightfox.nvim",
		config = function()
			vim.cmd('colorscheme carbonfox')
		end
	}
	--status bar
	use{
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons'},
		config = function()
			require('configs.lualine')
		end
	}
	--manson!
	use{
		"williamboman/mason.nvim",
		config = function()
			require('configs.mason')
		end
	}
	--telescope.
	use{
		'nvim-telescope/telescope.nvim',
		requires = 'nvim-lua/plenary.nvim',
		config = function ()
			require('config.telescope')
		end
	}
end
)

