local status, trouble = pcall(require, "trouble")
if not status then
    return
end
local kmap_ok, kmap = pcall(require, "core")
if not kmap_ok then
    return
end
trouble.setup({
    fold_open = "v", -- icon used for open folds
    fold_closed = ">", -- icon used for closed folds
    indent_lines = false, -- add an indent guide below the fold icons
    signs = {
        -- icons / text used for a diagnostic
        error = "",
        warning = "",
        hint = "",
        information = "",
        other = "",
    },
})
-- Keymaps
kmap.setKmap("n", "<leader>ot", "<cmd>TroubleToggle<CR>")
