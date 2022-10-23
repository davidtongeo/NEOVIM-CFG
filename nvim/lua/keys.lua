local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

keymap("n", "<leader>r", "<cmd>Lspsaga rename<CR>", opts)
keymap("n", "<leader>a", "<cmd>Telescope find_files<CR>", opts)
keymap("n", "<leader>d", "<cmd>Lspsaga code_action<CR>", opts)
keymap("n", "<leader>n", "<cmd>NvimTreeToggle<CR>", opts)
keymap("n", "<leader>fn", "<cmd>NvimTreeFocus<CR>", opts)
