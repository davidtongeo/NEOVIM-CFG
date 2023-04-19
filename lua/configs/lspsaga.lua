local sagaOk, saga = pcall(require, "lspsaga")
local kmapOk, kmap = pcall(require, "core")
if not sagaOk then
	return
end
if not kmapOk then
	return
end
saga.setup({
	symbol_in_winbar = {
		enable = true,
		separator = " -> ",
		hide_keyword = true,
		show_file = true,
		folder_level = 2,
		respect_root = false,
		color_mode = false,
	},
	colors = {
		--float window normal background color
		normal_bg = "#1d1536",
		--title background color
		title_bg = "#afd700",
		red = "#e95678",
		magenta = "#b33076",
		orange = "#FF8700",
		yellow = "#f7bb3b",
		green = "#afd700",
		cyan = "#36d0e0",
		blue = "#61afef",
		purple = "#CBA6F7",
		white = "#d1d4cf",
		black = "#1c1c19",
	},
})

-- Keymaps
kmap.setKmap("n", "<leader>ff", "<cmd>Lspsaga lsp_finder<CR>")
kmap.setKmap("n", "<leader>fd", "<cmd>Lspsaga code_action<CR>")
kmap.setKmap("n", "<leader>r", "<cmd>lua vim.lsp.buf.rename()<CR>")
