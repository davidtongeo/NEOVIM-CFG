local M = {}
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

M.setKmap = function(mode, key, action)
	keymap(mode, key, action, opts)
end
vim.opt.nu = true

vim.opt.scrolloff = 8
vim.opt.relativenumber = true

vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = false

vim.opt.pumheight = 7

vim.opt.smartindent = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.clipboard:append({ "unnamedplus" })

vim.opt.updatetime = 50
vim.opt.listchars:append("eol:↴")

vim.opt.list = true

-- tabs
keymap("n", "<leader>ll", "<cmd>tabnext<CR>")
keymap("n", "<leader>hh", "<cmd>tabprevious<CR>")
return M
