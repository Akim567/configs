return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        require('telescope').setup({})
        local builtin = require('telescope.builtin')
		vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "Find Files" })
        vim.keymap.set('n', '<leader>fw', builtin.live_grep, { desc = "Live Grep" })
        vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = "Find Buffers" })
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = "Find Help Tags" }) 
    end
}

