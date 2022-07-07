local M = {}

-- load the plugins function
M.loadpkg = function(plugins)
	local state, packer = pcall(require, "packer")
	--check if there is a packer module in first place.
	if not state then return end
	--startup packer function
	packer.startup(function(use)
		--loop every plugin is passed as an argument and use it.
		for _, i in pairs(plugins)do
			use(i)
		end
	end)
end

return M
