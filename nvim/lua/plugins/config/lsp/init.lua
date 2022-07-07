require("plugins.config.lsp.lspinstaller")

--some confings
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
      vim.lsp.diagnostic.on_publish_diagnostics, {
        	update_in_insert = true,
	}
)
