return {
    {
        'catppuccin/nvim',
        name = 'catppuccin',
        lazy = false,
        priority = 1000,
        config = function()
            require('catppuccin').setup {
                flavour = 'macchiato',
            }
            -- Set default colorscheme (change to 'aetheria' if you prefer)
            vim.cmd.colorscheme 'catppuccin'
        end,
    },
}
