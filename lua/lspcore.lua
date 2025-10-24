local m = {}

m.on_attach = function(argument)
    local client = assert(vim.lsp.get_client_by_id(argument.data.client_id))
    local function buf_set_keymap(...)
        vim.api.nvim_buf_set_keymap(argument.buf, ...)
    end
    local opts = { noremap = true, silent = true }

    buf_set_keymap("n", "gD", "<Cmd>lua vim.lsp.buf.declaration()<CR>", opts)
    buf_set_keymap("n", "<leader>lw", "<Cmd>lua vim.lsp.buf.code_action()<CR>", opts)
    buf_set_keymap("n", "<leader>lr", "<Cmd>lua vim.lsp.buf.rename()<CR>", opts)
    buf_set_keymap("n", "<leader>la", "<Cmd>lua vim.lsp.buf.hover()<CR>", opts)
    buf_set_keymap("n", "gd", "<Cmd>lua vim.lsp.buf.definition()<CR>", opts)
    buf_set_keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
    buf_set_keymap("n", "<space>ld", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
    client.server_capabilities.semanticTokensProvider = nil
end

return m;
