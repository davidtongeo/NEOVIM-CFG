local harpoonui = require("harpoon.ui")
local harpoonmark = require("harpoon.mark")
local kmapOk, kmap = pcall(require, "core")

if not kmapOk then
	return
end

-- Keymaps
kmap.setKmap("n", "<leader>hw", function()
	harpoonui.toggle_quick_menu()
end)

kmap.setKmap("n", "<leader>ha", function()
	harpoonmark.add_file()
end)
