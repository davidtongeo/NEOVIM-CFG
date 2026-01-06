MiniDeps.add({ source = "SmiteshP/nvim-navic", depends = { "LunarVim/breadcrumbs.nvim" } })

require("nvim-navic").setup {
    lsp = {
        auto_attach = true,
    },
}

require("breadcrumbs").setup()
