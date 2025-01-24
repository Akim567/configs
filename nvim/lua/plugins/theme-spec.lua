return {
    {
        'ellisonleao/gruvbox.nvim',
        lazy = true,
        priority = 1000,
        --config = function()
          --  vim.cmd('colorscheme gruvbox-material') -- Устанавливаем цветовую схему
        --end,
		opts = {},
    },
	{
        'folke/tokyonight.nvim',
        name = 'tokyonight',
        lazy = false,
        priority = 1000,
		config = function()
            vim.cmd([[colorscheme tokyonight]])
        end,
        opts = {},
    },
    {
        'catppuccin/nvim',
        name = 'catppuccin',
        lazy = true,
        priority = 1000,
        opts = {},
    },
}

