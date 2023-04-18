local treeOk, tree = pcall(require, "nvim-tree")
local kmapOk, kmap = pcall(require, "core")
if not kmapOk then
	return
end
if not treeOk then
	return
end

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
--

tree.setup({
	update_focused_file = {
		enable = false,
	},
	diagnostics = {
		enable = true,
		show_on_dirs = true,
	},
	modified = {
		enable = true,
		show_on_dirs = true,
		show_on_open_dirs = true,
	},
})

kmap.setKmap("n", "<leader>n", "<cmd>NvimTreeToggle<CR>")
kmap.setKmap("n", "<leader>fn", "<cmd>NvimTreeFocus<CR>")
local function open_nvim_tree()
	-- open the tree
	require("nvim-tree.api").tree.open()
end

vim.api.nvim_create_autocmd({ "BufEnter" }, {
	callback = function()
		if vim.fn.bufname("") == "." then
			vim.cmd([[NvimTreeOpen]])
		end
	end,
})
--
