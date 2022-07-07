local M = {}

--capabilities
M.capabilities = vim.lsp.protocol.make_client_capabilities()

local cmp_nvim_here, cmp_nvim = pcall(require, 'cmp_nvim_lsp')
if not cmp_nvim_here then return end

M.capabilities.textDocument.completion.completionItem.snippetSupport = true
M.capabilities = cmp_nvim.update_capabilities(M.capabilities)

--on attach
local function lsp_keymaps(bufnr)
  local opts = { noremap = true, silent = true }
  vim.api.nvim_buf_set_keymap(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "gI", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "gl", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
  vim.cmd [[ command! Format execute 'lua vim.lsp.buf.format({ async = true })' ]]
  vim.api.nvim_buf_set_keymap(bufnr, "n", "gs", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "<M-s>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
end

M.on_attach = function(client, bufnr)
	lsp_keymaps(bufnr)
end

return M
