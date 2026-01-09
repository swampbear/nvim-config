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
				javascriptreact = { 'prettierd', 'prettier', stop_after_first = true },
				typescript = { 'prettierd', 'prettier', stop_after_first = true },
				typescriptreact = { 'prettierd', 'prettier', stop_after_first = true },
				html = { 'prettierd', 'prettier', stop_after_first = true },
				css = { 'prettierd', 'prettier', stop_after_first = true },
				json = { 'prettierd', 'prettier', stop_after_first = true },
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
