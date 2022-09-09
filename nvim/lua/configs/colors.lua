local state, colors = pcall(require, 'nvim-highlight-colors')
if not state then return end

colors.setup{
	render = 'background', -- or 'foreground' or 'first_column'
	enable_tailwind = true
}
colors.turnOn()
