vim.opt.clipboard:append({ "unnamedplus" }) -- Clipboard

-- UI Stuff
vim.opt.nu = true
vim.opt.scrolloff = 8
vim.opt.relativenumber = true
vim.opt.pumheight = 6
-- Tabs as method of indenting
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.termguicolors = true

-- Search options
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Misc options
vim.g.mapleader = " "
vim.opt.cursorline = true
vim.opt.updatetime = 50
vim.opt.listchars:append("eol:↴")
vim.opt.list = true

vim.diagnostic.config({
	virtual_text = false,
})


-- remaps
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { noremap = true })
vim.keymap.set('n', '<A-h>', ':tabprevious<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<A-l>', ':tabnext<CR>', { noremap = true, silent = true })
vim.keymap.set('t', '<A-h>', [[<C-\><C-n>:tabprevious<CR>]], { noremap = true, silent = true })
vim.keymap.set('t', '<A-l>', [[<C-\><C-n>:tabnext<CR>]], { noremap = true, silent = true })
vim.keymap.set('n', '<Leader>tn', ':tabnew<CR>', { noremap = true, silent = true })

