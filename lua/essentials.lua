vim.opt.clipboard:append({ "unnamedplus" }) -- Clipboard

-- UI Stuff
vim.opt.nu = true
vim.opt.scrolloff = 8
vim.opt.relativenumber = true

-- Tabs as method of indenting
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.termguicolors = true

-- Search options
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- ignore the netrw default
vim.g.loaded_netrwPlugin = 1
vim.g.loaded_netrw = 1

-- Misc options
vim.g.mapleader = " "
vim.opt.cursorline = true
vim.opt.updatetime = 50
vim.opt.listchars:append("eol:↴")
vim.opt.list = true
