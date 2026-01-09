local keymap = vim.keymap

-- general keymaps
keymap.set('i', 'jk', '<ESC>')

keymap.set('n', '<leader>nh', ':nohl<CR>')

keymap.set('n', 'x', '"_x')

keymap.set('n', '<leader>+', '<C-a>')
keymap.set('n', '<leader>-', '<C-x>')

-- lazygit
vim.keymap.set('n', '<leader>lg', '<cmd>LazyGit<CR>', { desc = 'LazyGit' })

-- lazydocker
vim.keymap.set('n', '<leader>ld', '<cmd>Lazydocker<CR>', { desc = 'LazyGit' })
--nvim-tree
keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>')
--undotree
keymap.set('n', '<leader>u', '<cmd>UndotreeToggle<CR>')

-- telescope
local builtin = require 'telescope.builtin'
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- Recommended/example keymaps.
vim.keymap.set({ 'n', 'x' }, '<leader>ai', function()
	require('opencode').ask('@this: ', { submit = true })
end, { desc = 'Ask opencode' })
vim.keymap.set({ 'n', 'x' }, '<leader>x', function()
	require('opencode').select()
end, { desc = 'Execute opencode action…' })
vim.keymap.set({ 'n', 't' }, '<leader>.', function()
	require('opencode').toggle()
end, { desc = 'Toggle opencode' })

vim.keymap.set({ 'n', 'x' }, 'go', function()
	return require('opencode').operator '@this '
end, { expr = true, desc = 'Add range to opencode' })
vim.keymap.set('n', 'goo', function()
	return require('opencode').operator '@this ' .. '_'
end, { expr = true, desc = 'Add line to opencode' })

vim.keymap.set('n', '<S-C-u>', function()
	require('opencode').command 'session.half.page.up'
end, { desc = 'opencode half page up' })
vim.keymap.set('n', '<S-C-d>', function()
	require('opencode').command 'session.half.page.down'
end, { desc = 'opencode half page down' })

-- You may want these if you stick with the opinionated "<C-a>" and "<C-x>" above — otherwise consider "<leader>o".
vim.keymap.set('n', '+', '<C-a>', { desc = 'Increment', noremap = true })
vim.keymap.set('n', '-', '<C-x>', { desc = 'Decrement', noremap = true })
