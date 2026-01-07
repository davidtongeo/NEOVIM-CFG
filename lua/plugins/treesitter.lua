return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',

    opts = {
        highlight = {
            enable = true,
        },
        indent = {
            enable = true,
        },
        ensure_installed = {
            "lua",
            "vim",
            "java",
            "html",
            "css",
            "c",
            "cpp",
            "tsx",
            "javascript",
            "json",
            "python",
        },
        autoinstall = true,
    }
}
