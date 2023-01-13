local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

keymap("n", "<leader>r", "<cmd>Lspsaga rename<CR>", opts)
keymap("n", "<leader>a", "<cmd>Telescope find_files<CR>", opts)
keymap("n", "<leader>b", "<cmd>Telescope buffers<CR>", opts)
keymap("n", "<leader>d", "<cmd>Lspsaga code_action<CR>", opts)
keymap("n", "<leader>n", "<cmd>NvimTreeToggle<CR>", opts)
keymap("n", "<leader>fn", "<cmd>NvimTreeFocus<CR>", opts) --lsp find references
keymap("n", "<leader>ff", "<cmd>Lspsaga lsp_finder<CR>", opts)
--window Management.
keymap("n", "<leader>k", "<C-W>k", opts)
keymap("n", "<leader>j", "<C-W>j", opts)
keymap("n", "<leader>h", "<C-W>h", opts)
keymap("n", "<leader>l", "<C-W>l", opts)

keymap("n", "<leader>wn", "<C-W>n", opts) --Create a new Buffer.
keymap("n", "<leader>wq", "<C-W>q", opts) --Kill a Buffer.

--Harpoon
local harpoonui = require("harpoon.ui")
local harpoonmark = require("harpoon.mark")

keymap("n", "<leader>hw", function()
	harpoonui.toggle_quick_menu()
end, opts)
keymap("n", "<leader>ha", function()
	harpoonmark.add_file()
end, opts)
