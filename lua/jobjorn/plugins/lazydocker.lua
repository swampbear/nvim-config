return {
	config = function()
		require('lazydocker').setup {
			border = 'single', -- valid options are "single" | "double" | "shadow" | "curved"
		}
	end,
}
