-- Set leader key before loading plugins
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Load lazy.nvim and all plugins
require 'jobjorn.lazy'

-- Load core configuration
require 'jobjorn.core.options'
require 'jobjorn.core.keymaps'
