local tOk, telescope = pcall(require, "telescope")
local keyOk, kmap = pcall(require, "core")
if not tOk then
    return
end
if not keyOk then
    return
end
telescope.setup({})

-- Keymaps
kmap.setKmap("n", "<leader>a", "<cmd>Telescope find_files<CR>")
