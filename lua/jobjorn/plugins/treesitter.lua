return {
	'nvim-treesitter/nvim-treesitter',
	branch = 'master',
	lazy = false,
	build = ':TSUpdate',
	config = function()
		require('nvim-treesitter.configs').setup {
			-- A list of parser names, or "all" (the listed parsers MUST always be installed)
			ensure_installed = {
				'javascript',
				'go',
				'tsx',
				'typescript',
				'dockerfile',
				'gitignore',
				'python',
				'c',
				'lua',
				'vim',
				'vimdoc',
				'query',
				'markdown',
				'markdown_inline',
				'gomod',
				'gowork',
				'gotmpl',
			},

			-- Install parsers synchronously (only applied to `ensure_installed`)
			sync_install = false,

			-- Automatically install missing parsers when entering buffer
			-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
			auto_install = true,

			-- List of parsers to ignore installing (or "all")

			---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
			-- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

			highlight = {
				enable = true,

				-- Using this option may slow down your editor, and you may see some duplicate highlights.
				-- Instead of true it can also be a list of languages
				additional_vim_regex_highlighting = false,
			},

			-- enable indentation
			indent = { enable = true },

			--enable autotagging
			autotag = {
				enable = true,
			},
		}
	end,
}
