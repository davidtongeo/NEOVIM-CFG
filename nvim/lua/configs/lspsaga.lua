local state, saga = pcall(require, 'lspsaga')
local opts = { silent = true, noremap = true }
saga.init_lsp_saga {
}
local keymap = vim.api.nvim_set_keymap
keymap("n", "gn", "<cmd>Lspsaga rename<CR>", opts)
keymap("n", "gv", "<cmd>Lspsaga code_action<CR>", opts)
