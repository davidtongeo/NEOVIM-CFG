return {
    "Shatur/neovim-ayu",
    priority = 1000,
    lazy = false,

    config = function()
        require("ayu").setup({})
        vim.cmd([[colorscheme ayu]])
    end,
}
