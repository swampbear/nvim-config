vim.g.mapleader = ' '

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
