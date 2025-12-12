return {
	'stevearc/conform.nvim',
	event = { 'BufReadPre', 'BufNewFile' },
	config = function()
		require('conform').setup {
			formatters_by_ft = {
				lua = { 'stylua' },
				-- Conform will run multiple formatters sequentially
				python = { 'ruff' },
				go = { 'goimports', 'gofmt' },
				javascript = { 'prettierd', 'prettier', stop_after_first = true },
				markdown = { 'prettier' },
			},
			format_on_save = {
				-- These options will be passed to conform.format()
				timeout_ms = 500,
				lsp_format = 'fallback',
			},
		}
	end,
}
