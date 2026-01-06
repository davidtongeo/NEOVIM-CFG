MiniDeps.add({
    source = "MeanderingProgrammer/render-markdown.nvim",
    depends = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.nvim' },
})


require('render-markdown').setup({})
