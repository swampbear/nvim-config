return {
	'nvim-tree/nvim-tree.lua',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	cmd = { 'NvimTreeToggle', 'NvimTreeFocus' },
	config = function()
		-- recommended settings from nvim-tree docs
		vim.g.loaded = 1
		vim.g.loaded_netrwplugin = 1

		require('nvim-tree').setup {
			view = {
				side = 'right',
			},
		}
	end,
}
