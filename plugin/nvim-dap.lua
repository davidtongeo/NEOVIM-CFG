MiniDeps.add({
    source = "mfussenegger/nvim-dap",
    depends = {"rcarriga/nvim-dap-ui", "nvim-neotest/nvim-nio"}
})

local dap = require("dap")
require("dapui").setup()
