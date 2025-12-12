return {
	'mbbill/undotree',
	cmd = 'UndotreeToggle',
	config = function()
		-- Undotree configuration
		vim.g.undotree_WindowLayout = 2
		vim.g.undotree_ShortIndicators = 1
		vim.g.undotree_SetFocusWhenToggle = 1

		-- Persist undo history
		vim.opt.undofile = true
		vim.opt.undodir = vim.fn.stdpath 'data' .. '/undo'

		-- Optional: Customize diff window
		vim.g.undotree_DiffAutoOpen = 1
		vim.g.undotree_DiffpanelHeight = 10

		-- Optional: Help line
		vim.g.undotree_HelpLine = 0
	end,
}
