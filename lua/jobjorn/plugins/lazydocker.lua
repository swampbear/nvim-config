return {
	'mgierada/lazydocker.nvim',
	dependencies = { 'akinsho/toggleterm.nvim' },
	cmd = 'LazyDocker',
	config = function()
		require('lazydocker').setup {
			border = 'single', -- valid options are "single" | "double" | "shadow" | "curved"
		}
	end,
}
