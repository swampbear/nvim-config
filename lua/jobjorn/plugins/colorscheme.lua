return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = false,
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				flavour = "macchiato",
			})
			-- Set default colorscheme (change to name to enable different themes)
			vim.cmd.colorscheme("default")
		end,
	},
}
