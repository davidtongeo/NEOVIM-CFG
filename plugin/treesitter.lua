MiniDeps.add({
    source = "nvim-treesitter/nvim-treesitter",
    checkout = "master", -- Use 'master' branch as recommended
    monitor = "main",
    hooks = {
        post_checkout = function()
            vim.cmd('TSUpdate') -- Update parsers after checkout
        end
    },
})
require("nvim-treesitter.configs").setup({
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
})
