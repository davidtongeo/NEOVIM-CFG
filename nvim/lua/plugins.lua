function get_config(name)
	return string.format('require("config/%s")', name)
end
local use = require('packer').use
require('packer').startup(function()
  use 'wbthomason/packer.nvim' -- Package manager
  use({
	  'neovim/nvim-lspconfig',
	  config = get_config("lsp"),
  })
  use({
	'hrsh7th/cmp-nvim-lsp',
	'hrsh7th/cmp-buffer',
	'hrsh7th/cmp-path',
	'hrsh7th/cmp-cmdline',
  })
  use({
	'L3MON4D3/LuaSnip',
	'saadparwaiz1/cmp_luasnip',
  })
  use({
	  'onsails/lspkind-nvim',
	  config = get_config("lspkind"),
  })
  use({
	'vim-airline/vim-airline',
	'vim-airline/vim-airline-themes',

  })
  use({'jiangmiao/auto-pairs',})
  use({
	  'hrsh7th/nvim-cmp',
	  config = get_config("cmp"),
  })
  use({
	  'nvim-treesitter/nvim-treesitter',
	  config = get_config("treesitter"),
  })
  use({
	  'tami5/lspsaga.nvim',
	  config = get_config("lspsaga"),
  })
  use({
	  'ghifarit53/tokyonight-vim',
  })
  use({
	  "ray-x/lsp_signature.nvim",
	  config = get_config("signature"),
  })

end)
