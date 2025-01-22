return {
    {
        'ellisonleao/gruvbox.nvim',
        name = 'gruvbox',
        lazy = false,
        priority = 2000,
        config = function()
            vim.cmd([[colorscheme gruvbox]])
        end,
        -- opts = {},
    },
}
