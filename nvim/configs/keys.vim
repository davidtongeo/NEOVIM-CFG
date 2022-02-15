nnoremap <silent>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <silent>fp <cmd>lua require('telescope').extensions.media_files.media_files()<cr>
nnoremap <silent>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <silent>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <silent>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

lua <<EOF
local actions = require('telescope.actions')
require('telescope').setup{
defaults={
mappings = {
	n= {
		["q"] = actions.close
		},
	},
}
}
EOF
