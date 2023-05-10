local M = {}

M.cmd = ""
M.server_get = ""
M.c_id = 0
M.start_server = function()
	local config = {
		cmd = { M.cmd },
		on_attach = M.on_attach,
		capabilities = M.capabilities,
		name = "roblox_ls",
		root_dir = vim.fn.getcwd(),
	}
	local client_id = vim.lsp.start_client(config)
	if client_id then
		M.c_id = client_id
	end
end
M.atach_client = function()
	vim.lsp.buf_attach_client(0, M.c_id)
end
M.update_server = function()
	local client = vim.lsp.get_client_by_id(M.c_id)
	local handle = io.popen(M.server_get)
	local result = handle:read("*a")
	handle:close()
	local js = vim.json.decode(result)
	local cfg = {
		datamodel = js.DataModel,
		version = js.Version,
	}
	client.notify("$/updateDataModel", cfg)
end
M.Setup_Servers = function(options)
	if not type(options) == "table" then
		print("OPTIONS MUST BE TABLE")
		return
	end
	if options.cmd == nil or options.server_get == nil or options.on_attach == nil or options.capabilities == nil then
		print("options does not have cmd or server_get options...")
		return
	end
	M.cmd = options.cmd
	M.server_get = options.server_get
	M.on_attach = options.on_attach
	M.capabilities = options.capabilities
end

return M
