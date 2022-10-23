vim.opt.relativenumber = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.background = 'dark'
vim.opt.clipboard:append { 'unnamed', 'unnamedplus' }

--autosave

vim.api.nvim_create_autocmd("BufWritePre", {
	callback = function()
		vim.lsp.buf.format()
	end,
	group = vim.api.nvim_create_augroup("save", { clear = true })
})
