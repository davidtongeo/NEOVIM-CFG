local cmp = require'cmp'
local lspkind = require'lspkind'

cmp.setup({
   snippet = {
      expand = function(args)
	      require('luasnip').lsp_expand(args.body)
      end,
   },
   mapping = {
      ["<C-p>"] = cmp.mapping.select_prev_item(),
      ["<C-n>"] = cmp.mapping.select_next_item(),
      ["<C-d>"] = cmp.mapping.scroll_docs(-4),
      ["<C-f>"] = cmp.mapping.scroll_docs(4),
      ["<C-Space>"] = cmp.mapping.complete(),
      ["<C-e>"] = cmp.mapping.close(),
      ["<CR>"] = cmp.mapping.confirm({
         behavior = cmp.ConfirmBehavior.Replace
      }),
      ["<Tab>"] = cmp.mapping(cmp.mapping.select_next_item(), { "i", "s" }),
      ["<S-Tab>"] = cmp.mapping(cmp.mapping.select_prev_item(), { "i", "s" }),
   },
   formatting = {
      format = lspkind.cmp_format({with_text = true, maxwidth = 50})
   },
   sources = {
      { name = "nvim_lsp" },
      { name = "vsnip" },
      { name = "path" },
      {name = "cmdline"},
   }
})


