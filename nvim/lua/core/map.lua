local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

keymap('n', '<C-n>', ':NvimTreeToggle<CR>', opts)
keymap('n', '<C-R>', ':NvimTreeRefresh<CR>', opts)
