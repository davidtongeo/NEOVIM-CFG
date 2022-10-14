--import the base & lsp
local status_base, base = pcall(require, 'configs.lsp.base')
local status_lsp, lspconfig = pcall(require, 'lspconfig')
--check the modules 
if(not status_lsp)then return end
if (not status_base)then return end


local servers = {'html', 'cssls', 'tsserver', 'sumneko_lua', 'omnisharp', 'gdscript', 'pyright'}

function SetupSv(tabl)
	for _, server in pairs(tabl)do
		local ServerSt, ServerConf = pcall(require, 'configs.lsp.settings.'.. server)
		local opts = {
			on_attach = base.on_attach,
			capabilities = base.capabilities
		}
		if(ServerSt)then
			opts = vim.tbl_deep_extend('force', ServerConf, opts)
		end
		lspconfig[server].setup(opts)
	end
end

SetupSv(servers)
