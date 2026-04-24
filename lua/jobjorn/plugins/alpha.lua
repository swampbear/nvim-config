return {
	"goolord/alpha-nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local alpha = require("alpha")

		vim.api.nvim_set_hl(0, "AlphaHeader", {
			fg = "#FFFFFF", -- This is a nice blue color (hex code)
			bold = true, -- Make it bold for extra impact
		})

		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			[[                                                                    ]],
			[[                                                                    ]],
			[[                                                                    ]],
			[[                                                                    ]],
			[[                                                                    ]],
			[[███████╗██╗    ██╗ █████╗ ███╗   ███╗██████╗ ██╗   ██╗██╗███╗   ███╗]],
			[[██╔════╝██║    ██║██╔══██╗████╗ ████║██╔══██╗██║   ██║██║████╗ ████║]],
			[[███████╗██║ █╗ ██║███████║██╔████╔██║██████╔╝██║   ██║██║██╔████╔██║]],
			[[╚════██║██║███╗██║██╔══██║██║╚██╔╝██║██╔═══╝ ╚██╗ ██╔╝██║██║╚██╔╝██║]],
			[[███████║╚███╔███╔╝██║  ██║██║ ╚═╝ ██║██║      ╚████╔╝ ██║██║ ╚═╝ ██║]],
			[[╚══════╝ ╚══╝╚══╝ ╚═╝  ╚═╝╚═╝     ╚═╝╚═╝       ╚═══╝  ╚═╝╚═╝     ╚═╝]],
			[[                                                                    ]],
			[[                                                                    ]],
			[[                                                                    ]],
			[[                                                                    ]],
			[[                                                                    ]],
		}

		dashboard.section.buttons.val = {
			dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
			dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
			dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
			dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
			dashboard.button("c", "  Configuration", ":e ~/.config/nvim/init.lua<CR>"),
			dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
		}

		local function footer()
			return "Keep it simple stupid"
		end

		dashboard.section.footer.val = footer()

		dashboard.section.footer.opts.hl = "Type"
		dashboard.section.header.opts.hl = "AlphaHeader"
		dashboard.section.buttons.opts.hl = "Keyword"

		dashboard.opts.opts.noautocmd = true
		alpha.setup(dashboard.opts)
	end,
}
