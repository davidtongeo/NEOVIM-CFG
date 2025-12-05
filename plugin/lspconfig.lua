local cb = require("lspcore");

MiniDeps.add({
    source = "neovim/nvim-lspconfig"
})

-- enable configurations
vim.lsp.enable("lua_ls")


vim.lsp.config('*', {
    capabilities = cb.capabilities,
})

vim.api.nvim_create_autocmd('LspAttach', {
    callback = cb.on_attach,
})
