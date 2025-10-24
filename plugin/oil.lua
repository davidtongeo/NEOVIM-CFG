MiniDeps.add({
    source = "stevearc/oil.nvim",
    depends = { "nvim-mini/mini.icons" }
})

require("mini.icons").setup()
require("oil").setup({
    default_file_explorer = true,
})
vim.keymap.set("n", "<leader>n", function()
    vim.cmd((vim.bo.filetype == "oil") and "bd" or "Oil")
end)
