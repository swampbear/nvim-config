return {
	-- LSP Zero
	{
		'VonHeikemen/lsp-zero.nvim',
		lazy = true,
		config = false,
	},

	-- LSP Configuration
	{
		'neovim/nvim-lspconfig',
		dependencies = {
			'VonHeikemen/lsp-zero.nvim',
			'hrsh7th/cmp-nvim-lsp',
			'williamboman/mason-lspconfig.nvim',
		},
		config = function()
			-- show virtual text + signs in gutter
			vim.diagnostic.config {
				virtual_text = true, -- inline text
				signs = true, -- symbols in gutter
				update_in_insert = false,
				severity_sort = true,
			}

			vim.o.updatetime = 250 -- faster response
			vim.api.nvim_create_autocmd('CursorHold', {
				callback = function()
					vim.diagnostic.open_float(nil, { focusable = false })
				end,
			})

			local lsp = require 'lsp-zero'
			lsp.setup()
		end,
	},

	-- Mason - LSP/tool installer
	{
		'williamboman/mason.nvim',
		config = function()
			require('mason').setup()
		end,
	},

	-- Mason LSP Config
	{
		'williamboman/mason-lspconfig.nvim',
		dependencies = {
			'williamboman/mason.nvim',
		},
		config = function()
			require('mason-lspconfig').setup {
				ensure_installed = { 'lua_ls', 'rust_analyzer', 'ts_ls', 'eslint', 'html', 'tailwindcss', 'pyright', 'gopls' },
				handlers = {
					function(server_name)
						require('lspconfig')[server_name].setup {}
					end,
				},
			}
		end,
	},

	-- Mason Tool Installer
	{
		'WhoIsSethDaniel/mason-tool-installer.nvim',
		dependencies = {
			'williamboman/mason.nvim',
		},
		config = function()
			require('mason-tool-installer').setup {
				ensure_installed = { 'prettier', 'stylua', 'isort', 'black' },
			}
		end,
	},

	-- Completion
	{
		'hrsh7th/nvim-cmp',
		event = 'InsertEnter',
		dependencies = {
			'hrsh7th/cmp-buffer',
			'hrsh7th/cmp-path',
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-nvim-lua',
			'saadparwaiz1/cmp_luasnip',
			'L3MON4D3/LuaSnip',
			'rafamadriz/friendly-snippets',
		},
		config = function()
			local cmp = require 'cmp'
			local luasnip = require 'luasnip'

			-- Load friendly-snippets (includes HTML, JS, JSX, React, etc.)
			require('luasnip.loaders.from_vscode').lazy_load()

			-- Enable JSX/TSX snippets in javascript/typescript files
			luasnip.filetype_extend('javascript', { 'javascriptreact', 'html' })
			luasnip.filetype_extend('typescript', { 'typescriptreact', 'html' })
			luasnip.filetype_extend('javascriptreact', { 'javascript', 'html' })
			luasnip.filetype_extend('typescriptreact', { 'typescript', 'html' })

			cmp.setup {
				snippet = {
					expand = function(args)
						luasnip.lsp_expand(args.body)
					end,
				},
				mapping = cmp.mapping.preset.insert {
					['<C-n>'] = cmp.mapping.select_next_item(),
					['<C-p>'] = cmp.mapping.select_prev_item(),
					['<C-b>'] = cmp.mapping.scroll_docs(-4),
					['<C-f>'] = cmp.mapping.scroll_docs(4),
					['<C-Space>'] = cmp.mapping.complete(),
					['<CR>'] = cmp.mapping.confirm { select = true }, -- confirm with Enter
					['<Tab>'] = cmp.mapping.select_next_item(),
					['<S-Tab>'] = cmp.mapping.select_prev_item(),
				},
				sources = cmp.config.sources({
					{ name = 'nvim_lsp' },
					{ name = 'luasnip' },
				}, {
					{ name = 'buffer' },
					{ name = 'path' },
				}),
				window = {
					completion = cmp.config.window.bordered {
						border = 'single',
						winhighlight = 'Normal:Normal,FloatBorder:BlueBorder',
					},
					documentation = cmp.config.window.bordered {
						border = 'single',
						winhighlight = 'Normal:Normal,FloatBorder:BlueBorder',
					},
				},
				formatting = {
					fields = { 'abbr', 'kind', 'menu' },
					format = function(entry, vim_item)
						local menu_icon = {
							nvim_lsp = '[LSP]',
							luasnip = '[Snip]',
							buffer = '[Buf]',
							path = '[Path]',
						}
						vim_item.menu = menu_icon[entry.source.name]
						return vim_item
					end,
				},
			}
		end,
	},
}
