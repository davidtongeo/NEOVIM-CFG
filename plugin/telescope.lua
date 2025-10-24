local function buildfn(params)
    vim.notify('Building telescope', vim.log.levels.INFO)
    local obj = vim.system({ 'make' }, { cwd = params.path }):wait()
    if obj.code == 0 then
        vim.notify('Building telescope done', vim.log.levels.INFO)
    else
        vim.notify('Building telescope failed', vim.log.levels.ERROR)
    end
end
MiniDeps.add({
    source = "nvim-telescope/telescope-fzf-native.nvim",
    depends = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope.nvim",
        "nvim-telescope/telescope-file-browser.nvim",
    },
    hooks = {
        post_install = buildfn,
        post_checkout = buildfn,
    }
})

require("telescope").setup({
    pickers = {
        find_files = {
            previewer = false,
            theme = "dropdown",
            layout_config = {
                height = 40,
                width = 70,
            },
        },
    },
    extensions = {
        fzf = {
            fuzzy = true,                   -- false will only do exact matching
            override_generic_sorter = true, -- override the generic sorter
            override_file_sorter = true,    -- override the file sorter
            case_mode = "smart_case",       -- or "ignore_case" or "respect_case"
            -- the default case_mode is "smart_case"
        },
        file_browser = {
            path = "%:p:h",
            cwd = vim.fn.expand("%:p:h"),
            theme = "dropdown",
            initial_mode = "normal",
            hijack_netrw = true,
            previewer = false,
            grouped = true,
            layout_config = {
                height = 40,
                width = 70,
            },
        },
    },
})
require("telescope").load_extension("fzf")
require("telescope").load_extension("file_browser")

-- keybinds
vim.keymap.set('n', '<leader>a', "<cmd>Telescope find_files<cr>", { noremap = true })
