vim.diagnostic.config({
	update_in_insert = false,
})
require("noice").setup({
	lsp = {
		progress = {
			enabled = not vim.bo.filetype == "java",
		},
		-- override markdown rendering so that **cmp** and other plugins use **Treesitter**
		override = {
			["vim.lsp.util.convert_input_to_markdown_lines"] = true,
			["vim.lsp.util.stylize_markdown"] = true,
			["cmp.entry.get_documentation"] = true,
		},
		documentation = {
			view = "hover",
			---@type NoiceViewOptions
			opts = {
				lang = "markdown",
				replace = true,
				render = "plain",
				format = { "{message}" },
				win_options = { concealcursor = "n", conceallevel = 3 },
				size = {
					width = "auto",
					height = "auto",
					max_width = 60,
					max_height = 10,
				},
				--
			},
		},
	},
	routes = {
		{
			filter = {
				event = "msg_show",
				kind = "search_count",
			},
			opts = { skip = true },
		},
	},
	-- you can enable a preset for easier configuration
	presets = {
		bottom_search = false, -- use a classic bottom cmdline for search
		command_palette = true, -- position the cmdline and popupmenu together
		long_message_to_split = true, -- long messages will be sent to a split
		inc_rename = false, -- enables an input dialog for inc-rename.nvim
		lsp_doc_border = false, -- add a border to hover docs and signature help
	},
})
