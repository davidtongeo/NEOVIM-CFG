local cb = require("lspcore");

return {
    "neovim/nvim-lspconfig",
    config = function()
        -- enable configurations
        vim.lsp.enable("lua_ls")
        vim.lsp.enable("gopls")

        vim.lsp.config('*', {
            capabilities = cb.capabilities,
        })

        vim.api.nvim_create_autocmd('LspAttach', {
            callback = cb.on_attach,
        })
    end,
}
