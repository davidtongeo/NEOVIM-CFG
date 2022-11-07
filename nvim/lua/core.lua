vim.opt.relativenumber = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.clipboard:append({ "unnamed", "unnamedplus" })
vim.opt.updatetime = 700
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
