--import the base & lsp
local status_base, base = pcall(require, "configs.lsp.base")
local status_lsp, lspconfig = pcall(require, "lspconfig")
--check the modules
if not status_lsp then
	return
end
if not status_base then
	return
end

local servers = { "html", "cssls", "tsserver", "sumneko_lua", "omnisharp", "gdscript", "pyright" }

--config icons.
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

local config = {
	-- disable virtual text
	virtual_text = false,
	-- show signs
	signs = { active = signs },
	update_in_insert = true,
	underline = true,
	severity_sort = true,
	float = {
		focusable = false,
		style = "minimal",
		border = "rounded",
		source = "always",
		header = "",
		prefix = "",
	},
}

vim.diagnostic.config(config)

function SetupSv(tabl)
	for _, server in pairs(tabl) do
		local ServerSt, ServerConf = pcall(require, "configs.lsp.settings." .. server)
		local opts = {
			on_attach = base.on_attach,
			capabilities = base.capabilities,
		}
		if ServerSt then
			opts = vim.tbl_deep_extend("force", ServerConf, opts)
		end
		lspconfig[server].setup(opts)
	end
end

SetupSv(servers)
