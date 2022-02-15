"Plugs
call plug#begin()
"lsp
Plug 'neovim/nvim-lspconfig'
Plug 'onsails/lspkind-nvim'

"cmp
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
"snippets
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
"utils
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope-media-files.nvim'

Plug 'andweeb/presence.nvim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"parentesis
Plug 'jiangmiao/auto-pairs'
"colors for css
Plug 'ObserverOfTime/coloresque.vim'
call plug#end()

"sources to configs files
"
syntax enable
set termguicolors
set background=dark


