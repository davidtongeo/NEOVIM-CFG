MiniDeps.add({
    source = "mfussenegger/nvim-dap",
    depends = {"rcarriga/nvim-dap-ui", "nvim-neotest/nvim-nio"}
})

local dap = require("dap")
local dapui = require("dapui")
dapui.setup()

--keybinds
-- Open DAP UI
vim.keymap.set('n', '<leader>do', function()
  dapui.open()
end, { desc = "Open DAP UI", noremap = true, silent = true })

-- Close DAP UI
vim.keymap.set('n', '<leader>dc', function()
  dapui.close()
end, { desc = "Close DAP UI", noremap = true, silent = true })

-- Toggle breakpoint
vim.keymap.set('n', '<leader>db', function()
  dap.toggle_breakpoint()
end, { desc = "Toggle breakpoint", noremap = true, silent = true })
