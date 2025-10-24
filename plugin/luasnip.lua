MiniDeps.add({
    source = "L3MON4D3/LuaSnip",
    depends = { "rafamadriz/friendly-snippets" }
})
--
require("luasnip.loaders.from_vscode").lazy_load()
