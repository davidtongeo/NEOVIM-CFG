vim.opt.scrolloff = 10

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.cursorline = true
vim.opt.termguicolors = true

vim.opt.clipboard:append({ "unnamedplus" })

vim.opt.updatetime = 50
vim.opt.listchars:append("eol:↴")

vim.opt.list = true
--AUTOCMD!
local grp = vim.api.nvim_create_augroup("Usv", { clear = true })
local grpCursor = vim.api.nvim_create_augroup("Cursor", { clear = true })
vim.api.nvim_create_autocmd("BufWritePre", {
    callback = function()
        vim.lsp.buf.format()
    end,
    group = grp,
})
