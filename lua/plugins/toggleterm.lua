return {
    'akinsho/toggleterm.nvim',
    version = "*",
    lazy = false,
    keys = {
        { "<space>tt", "<Cmd>ToggleTerm<CR>" },
        { "<space>ts", "<Cmd>TermSelect<CR>" },
        { "<space>tn", "<Cmd>lua require('toggleterm').setup() require('toggleterm.terminal').Terminal:new():toggle()<CR>" }
    },
    config = function()
        require("toggleterm").setup({direction = "float"})
    end
}
