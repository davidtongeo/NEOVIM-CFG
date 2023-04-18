local status, nullls = pcall(require, "null-ls")
if not status then
	return
end
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
nullls.setup({
	sources = {
		nullls.builtins.formatting.stylua,
		nullls.builtins.formatting.csharpier,
		nullls.builtins.formatting.prettier,
		nullls.builtins.formatting.gofumpt,
		nullls.builtins.formatting.rustfmt,
	},
	on_attach = function(client, bufnr)
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritepre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					vim.lsp.buf.format({ bufnr = bufnr })
				end,
			})
		end
	end,
})
