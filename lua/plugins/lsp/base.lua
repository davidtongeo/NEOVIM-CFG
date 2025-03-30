local M = {}
--on_attach for server setups
M.on_attach = function(client, bufnr)
	local function buf_set_keymap(...)
		vim.api.nvim_buf_set_keymap(bufnr, ...)
	end
	-- local function buf_set_option(...)
	-- 	vim.api.nvim_buf_set_option(bufnr, ...)
	-- end
	--
	-- --Enable completion triggered by <c-x><c-o>
	-- buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
	-- Mappings.
	local opts = { noremap = true, silent = true }
	-- enable native vim lsp
	--vim.lsp.completion.enable(true, client.id, bufnr, { autotrigger = true })
	-- See `:help vim.lsp.*` for documentation on any of the below functions
	buf_set_keymap("n", "gD", "<Cmd>lua vim.lsp.buf.declaration()<CR>", opts)
	buf_set_keymap("n", "<leader>lw", "<Cmd>lua vim.lsp.buf.code_action()<CR>", opts)
	buf_set_keymap("n", "<leader>lr", "<Cmd>lua vim.lsp.buf.rename()<CR>", opts)
	buf_set_keymap("n", "<leader>la", "<Cmd>lua vim.lsp.buf.hover()<CR>", opts)
	buf_set_keymap("n", "gd", "<Cmd>lua vim.lsp.buf.definition()<CR>", opts)
	buf_set_keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)

	vim.lsp.inlay_hint.enable(true)
end
--capabilities
--M.capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())
M.capabilities = require("blink.cmp").get_lsp_capabilities()

return M
