-- Aetheria Theme for Neovim
-- Inspired by Audio Waveform Omarchy colorscheme and Base16-Tarot color palette

vim.cmd('highlight clear')
if vim.fn.exists('syntax_on') then
	vim.cmd('syntax reset')
end

vim.o.termguicolors = true
vim.o.background = 'dark'
vim.g.colors_name = 'aetheria'

local colors = {
	-- Base colors (dark theme)
	bg0 = '#0e091d',
	bg1 = '#061F23',
	bg2 = '#092F34',
	bg3 = '#0C3F45',
	bg4 = '#0F5057',
	bg5 = '#126069',

	-- Foreground colors
	fg0 = '#C8E967',
	fg1 = '#A8D61F',
	fg2 = '#8CB319',

	-- Accent colors (aetheria neon palette)
	purple = '#9147a8',
	red = '#E20342',
	orange = '#FF7F41',
	cyan = '#04C5F0',
	red_vibrant = '#f93d3b',
	yellow = '#ffbe74',
	pink = '#FD3E6A',
	green = '#7cd699',
	green_dark = '#47A854',
}

local hl = vim.api.nvim_set_hl

-- Editor highlights
hl(0, 'Normal', { fg = colors.fg0, bg = colors.bg0 })
hl(0, 'NormalFloat', { fg = colors.fg0, bg = colors.bg1 })
hl(0, 'FloatBorder', { fg = colors.purple, bg = colors.bg1 })
hl(0, 'FloatTitle', { fg = colors.cyan, bg = colors.bg1, bold = true })
hl(0, 'Cursor', { fg = colors.bg0, bg = colors.purple })
hl(0, 'CursorLine', { bg = colors.bg1 })
hl(0, 'CursorLineNr', { fg = colors.cyan, bold = true })
hl(0, 'LineNr', { fg = colors.fg2 })
hl(0, 'Visual', { bg = colors.bg2 })
hl(0, 'VisualNOS', { bg = colors.bg2 })
hl(0, 'Search', { fg = colors.bg0, bg = colors.cyan })
hl(0, 'IncSearch', { fg = colors.bg0, bg = colors.purple })
hl(0, 'MatchParen', { fg = colors.pink, bold = true })

-- Syntax highlighting
hl(0, 'Comment', { fg = colors.bg5, italic = true })
hl(0, 'Constant', { fg = colors.yellow })
hl(0, 'String', { fg = colors.orange })
hl(0, 'Character', { fg = colors.orange })
hl(0, 'Number', { fg = colors.yellow })
hl(0, 'Boolean', { fg = colors.yellow })
hl(0, 'Float', { fg = colors.yellow })
hl(0, 'Identifier', { fg = colors.fg0 })
hl(0, 'Function', { fg = colors.green })
hl(0, 'Statement', { fg = colors.purple })
hl(0, 'Conditional', { fg = colors.purple })
hl(0, 'Repeat', { fg = colors.purple })
hl(0, 'Label', { fg = colors.red })
hl(0, 'Operator', { fg = colors.fg1 })
hl(0, 'Keyword', { fg = colors.purple })
hl(0, 'Exception', { fg = colors.red_vibrant })
hl(0, 'PreProc', { fg = colors.pink })
hl(0, 'Include', { fg = colors.pink })
hl(0, 'Define', { fg = colors.pink })
hl(0, 'Macro', { fg = colors.pink })
hl(0, 'PreCondit', { fg = colors.pink })
hl(0, 'Type', { fg = colors.red })
hl(0, 'StorageClass', { fg = colors.red })
hl(0, 'Structure', { fg = colors.red })
hl(0, 'Typedef', { fg = colors.red })
hl(0, 'Special', { fg = colors.cyan })
hl(0, 'SpecialChar', { fg = colors.cyan })
hl(0, 'Tag', { fg = colors.purple })
hl(0, 'Delimiter', { fg = colors.fg1 })
hl(0, 'SpecialComment', { fg = colors.bg5, italic = true, bold = true })
hl(0, 'Debug', { fg = colors.red_vibrant })
hl(0, 'Underlined', { underline = true })
hl(0, 'Error', { fg = colors.red_vibrant, bold = true })
hl(0, 'Todo', { fg = colors.cyan, bold = true })

-- UI elements
hl(0, 'StatusLine', { fg = colors.fg0, bg = colors.bg2 })
hl(0, 'StatusLineNC', { fg = colors.fg2, bg = colors.bg1 })
hl(0, 'TabLine', { fg = colors.fg2, bg = colors.bg2 })
hl(0, 'TabLineFill', { bg = colors.bg1 })
hl(0, 'TabLineSel', { fg = colors.purple, bg = colors.bg0, bold = true })
hl(0, 'Pmenu', { fg = colors.fg0, bg = colors.bg1 })
hl(0, 'PmenuSel', { fg = colors.cyan, bg = colors.bg3, bold = true })
hl(0, 'PmenuSbar', { bg = colors.bg2 })
hl(0, 'PmenuThumb', { bg = colors.red })
hl(0, 'WildMenu', { fg = colors.bg0, bg = colors.purple })
hl(0, 'VertSplit', { fg = colors.bg3 })
hl(0, 'WinSeparator', { fg = colors.bg3 })
hl(0, 'Folded', { fg = colors.fg2, bg = colors.bg1 })
hl(0, 'FoldColumn', { fg = colors.pink, bg = colors.bg0 })
hl(0, 'SignColumn', { fg = colors.red, bg = colors.bg0 })
hl(0, 'ColorColumn', { bg = colors.bg1 })

-- Diff highlighting
hl(0, 'DiffAdd', { fg = colors.orange, bg = colors.bg1 })
hl(0, 'DiffChange', { fg = colors.cyan, bg = colors.bg1 })
hl(0, 'DiffDelete', { fg = colors.red_vibrant, bg = colors.bg1 })
hl(0, 'DiffText', { fg = colors.fg1, bg = colors.bg3, bold = true })

-- Git signs
hl(0, 'GitSignsAdd', { fg = colors.orange })
hl(0, 'GitSignsChange', { fg = colors.cyan })
hl(0, 'GitSignsDelete', { fg = colors.red_vibrant })

-- Diagnostic highlights
hl(0, 'DiagnosticError', { fg = colors.red_vibrant })
hl(0, 'DiagnosticWarn', { fg = colors.cyan })
hl(0, 'DiagnosticInfo', { fg = colors.yellow })
hl(0, 'DiagnosticHint', { fg = colors.pink })
hl(0, 'DiagnosticUnderlineError', { undercurl = true, sp = colors.red_vibrant })
hl(0, 'DiagnosticUnderlineWarn', { undercurl = true, sp = colors.cyan })
hl(0, 'DiagnosticUnderlineInfo', { undercurl = true, sp = colors.yellow })
hl(0, 'DiagnosticUnderlineHint', { undercurl = true, sp = colors.pink })

-- LSP highlights
hl(0, 'LspReferenceText', { bg = colors.bg2 })
hl(0, 'LspReferenceRead', { bg = colors.bg2 })
hl(0, 'LspReferenceWrite', { bg = colors.bg2, underline = true })

-- Treesitter highlights
hl(0, '@variable', { fg = colors.fg0 })
hl(0, '@variable.builtin', { fg = colors.yellow })
hl(0, '@variable.parameter', { fg = colors.fg1 })
hl(0, '@variable.member', { fg = colors.green })
hl(0, '@constant', { fg = colors.yellow })
hl(0, '@constant.builtin', { fg = colors.yellow })
hl(0, '@constant.macro', { fg = colors.cyan })
hl(0, '@module', { fg = colors.red })
hl(0, '@module.builtin', { fg = colors.red })
hl(0, '@label', { fg = colors.red })
hl(0, '@string', { fg = colors.orange })
hl(0, '@string.escape', { fg = colors.cyan })
hl(0, '@string.special', { fg = colors.cyan })
hl(0, '@string.regexp', { fg = colors.pink })
hl(0, '@character', { fg = colors.orange })
hl(0, '@character.special', { fg = colors.cyan })
hl(0, '@boolean', { fg = colors.yellow })
hl(0, '@number', { fg = colors.yellow })
hl(0, '@number.float', { fg = colors.yellow })
hl(0, '@type', { fg = colors.red })
hl(0, '@type.builtin', { fg = colors.red })
hl(0, '@type.definition', { fg = colors.red })
hl(0, '@attribute', { fg = colors.pink })
hl(0, '@property', { fg = colors.green })
hl(0, '@function', { fg = colors.green })
hl(0, '@function.builtin', { fg = colors.green })
hl(0, '@function.call', { fg = colors.green })
hl(0, '@function.macro', { fg = colors.pink })
hl(0, '@function.method', { fg = colors.green })
hl(0, '@function.method.call', { fg = colors.green })
hl(0, '@constructor', { fg = colors.red })
hl(0, '@operator', { fg = colors.fg1 })
hl(0, '@keyword', { fg = colors.purple })
hl(0, '@keyword.coroutine', { fg = colors.purple })
hl(0, '@keyword.function', { fg = colors.purple })
hl(0, '@keyword.operator', { fg = colors.purple })
hl(0, '@keyword.import', { fg = colors.pink })
hl(0, '@keyword.conditional', { fg = colors.purple })
hl(0, '@keyword.repeat', { fg = colors.purple })
hl(0, '@keyword.return', { fg = colors.purple })
hl(0, '@keyword.exception', { fg = colors.red_vibrant })
hl(0, '@comment', { fg = colors.bg5, italic = true })
hl(0, '@comment.documentation', { fg = colors.bg5, italic = true })
hl(0, '@punctuation', { fg = colors.fg1 })
hl(0, '@punctuation.bracket', { fg = colors.fg1 })
hl(0, '@punctuation.delimiter', { fg = colors.fg1 })
hl(0, '@punctuation.special', { fg = colors.cyan })
hl(0, '@tag', { fg = colors.purple })
hl(0, '@tag.attribute', { fg = colors.red })
hl(0, '@tag.delimiter', { fg = colors.fg1 })

-- Telescope
hl(0, 'TelescopeBorder', { fg = colors.purple })
hl(0, 'TelescopePromptBorder', { fg = colors.red })
hl(0, 'TelescopeResultsBorder', { fg = colors.orange })
hl(0, 'TelescopePreviewBorder', { fg = colors.yellow })
hl(0, 'TelescopeSelection', { fg = colors.cyan, bg = colors.bg2, bold = true })
hl(0, 'TelescopeMatching', { fg = colors.purple, bold = true })

-- NvimTree
hl(0, 'NvimTreeNormal', { fg = colors.fg0, bg = colors.bg0 })
hl(0, 'NvimTreeFolderName', { fg = colors.red })
hl(0, 'NvimTreeFolderIcon', { fg = colors.orange })
hl(0, 'NvimTreeFileName', { fg = colors.fg0 })
hl(0, 'NvimTreeFileIcon', { fg = colors.fg1 })
hl(0, 'NvimTreeIndentMarker', { fg = colors.bg3 })
hl(0, 'NvimTreeRootFolder', { fg = colors.purple, bold = true })
hl(0, 'NvimTreeGitDirty', { fg = colors.cyan })
hl(0, 'NvimTreeGitNew', { fg = colors.orange })
hl(0, 'NvimTreeGitDeleted', { fg = colors.red_vibrant })

-- Terminal colors
vim.g.terminal_color_0 = '#061F23'
vim.g.terminal_color_1 = '#E20342'
vim.g.terminal_color_2 = '#FF7F41'
vim.g.terminal_color_3 = '#04C5F0'
vim.g.terminal_color_4 = '#ffbe74'
vim.g.terminal_color_5 = '#FD3E6A'
vim.g.terminal_color_6 = '#7cd699'
vim.g.terminal_color_7 = '#A8D61F'
vim.g.terminal_color_8 = '#0C3F45'
vim.g.terminal_color_9 = '#f93d3b'
vim.g.terminal_color_10 = '#FF7F41'
vim.g.terminal_color_11 = '#ffbe74'
vim.g.terminal_color_12 = '#dd66ff'
vim.g.terminal_color_13 = '#9147a8'
vim.g.terminal_color_14 = '#ff99dd'
vim.g.terminal_color_15 = '#ffffff'
