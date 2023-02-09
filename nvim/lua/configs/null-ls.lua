local status, nullls = pcall(require, "null-ls")
if not status then
    return
end

nullls.setup({
    sources = {
        nullls.builtins.formatting.stylua,
        nullls.builtins.formatting.csharpier,
        nullls.builtins.formatting.prettier,
        nullls.builtins.formatting.gofumpt,
    },
})
