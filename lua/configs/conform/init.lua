local util = require("conform.util")
local conform = require("conform")
-- may change since idk when i'm gonna to rework  that directory so yea
local formatter_configs = vim.fn.stdpath("config") .. "\\lua\\configs\\conform\\formatter_configs\\"

-- modify the formater for c#
local clang_format = require("conform.formatters.clang_format")
conform.formatters.clang_format = vim.tbl_deep_extend("force", clang_format, {
	args = util.extend_args(clang_format.args, {
		"-style=file:" .. formatter_configs .. ".clang-format",
	}),
})

-- Setup
conform.setup({
	formatters_by_ft = {
		cs = { "clang_format" },
		lua = { "stylua" },
		cpp = { "clang_format" },
	},
	format_on_save = {
		timeout_ms = 1000,
		lsp_fallback = true,
	},
})
-- format on save
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		require("conform").format({ bufnr = args.buf })
	end,
})
