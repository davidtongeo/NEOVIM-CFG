local ok, roblox_utils = pcall(require, "configs.lsp.c_servers.roblox_utils")
local status_base, base = pcall(require, "configs.lsp.base")
if not ok then
	return
end
if not status_base then
	return
end
roblox_utils.Setup_Servers({
	cmd = "lua-language-server",
	server_get = "curl http://localhost:27843/",
	on_attach = base.on_attach,
	capabilities = base.capabilities,
})

vim.api.nvim_create_user_command("RunRobloxUtils", function()
	roblox_utils.start_server()
	roblox_utils.atach_client()
	roblox_utils.update_server()
	vim.api.nvim_create_autocmd({ "BufWritePost" }, {
		callback = function()
			roblox_utils.update_server()
		end,
	})
	vim.api.nvim_create_autocmd({ "BufEnter" }, {
		callback = function(Buf)
			if vim.bo.filetype == "lua" then
				roblox_utils.atach_client()
				roblox_utils.update_server()
			end
		end,
	})
end, {})
