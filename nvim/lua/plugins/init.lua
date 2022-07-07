--list of plugins, you can add as many you want.
Plugins = {
	{'wbthomason/packer.nvim',},
	--lsp utils
	{
		'hrsh7th/cmp-nvim-lsp',
	},
	{
		'williamboman/nvim-lsp-installer',
		config = function()
			require('plugins.config.lsp')
		end,
	},
	{
		'neovim/nvim-lspconfig',
	},
	{
		'ray-x/lsp_signature.nvim',
		config = function ()
			require('plugins.config.lsp_signature')
		end,
	},
	--completion utils
	{'rafamadriz/friendly-snippets',},
	{
		'hrsh7th/nvim-cmp',
		config = function()
			require('plugins.config.cmp')
		end,
	},
	{'L3MON4D3/LuaSnip',},
	{'hrsh7th/cmp-buffer',},
	{'hrsh7th/cmp-path',},
	{'saadparwaiz1/cmp_luasnip',},
	--
	{
		'kyazdani42/nvim-web-devicons',
	},
	{'romgrk/barbar.nvim',},
	{
		'nvim-lualine/lualine.nvim',
		config = function ()
			require('plugins.config.lualine')
		end,
	},
	{
		'kyazdani42/nvim-tree.lua',
		tag = 'nightly',
		config = function ()
			require('plugins.config.nvimtree')
		end,
	},
	{
		'onsails/lspkind.nvim',
		config = function ()
			require("plugins.config.lspkind")
		end,
	},
	{'jiangmiao/auto-pairs',},
	{
		'norcalli/nvim-colorizer.lua',
		config = function ()
			require('colorizer').setup()
		end,
	},
	{'EdenEast/nightfox.nvim',},
	{'andweeb/presence.nvim',},
}
require('core.packer').loadpkg(Plugins)


