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
vim.opt.expandtab = false 

vim.opt.smartindent = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.clipboard:append({ "unnamedplus" })

vim.opt.updatetime = 50
vim.opt.listchars:append("eol:↴")

vim.opt.list = true

-- terminal
vim.opt.shell = "pwsh"
vim.opt.shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;"
vim.opt.shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait"
vim.opt.shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode"
vim.opt.shellquote = ""
vim.opt.shellxquote = ""

-- tabs
keymap("n", "<leader>ll", "<cmd>tabnext<CR>")
keymap("n", "<leader>hh", "<cmd>tabprevious<CR>")
return M

