MiniDeps.add("akinsho/toggleterm.nvim")

require("toggleterm").setup({
    direction = "float"
})

local opts = { noremap = true, silent = true }
-- keymaps
vim.keymap.set("n", "<space>tt", "<Cmd>ToggleTerm<CR>", opts)
vim.keymap.set("n", "<space>ts", "<Cmd>TermSelect<CR>", opts)
vim.keymap.set("n", "<space>tn", "<Cmd>TermNew<CR>", opts)
