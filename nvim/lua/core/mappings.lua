-- Leader
vim.g.mapleader = " " -- Устанавливает "пробел" в качестве основного лидера (leader key) для привязки пользовательских клавиш

-- Buffers
vim.keymap.set('n', '<leader>w', ':w<CR>')

-- Neo-tree
vim.keymap.set('n', '<leader>e', ':Neotree left toggle reveal<CR>')
vim.keymap.set('n', '<leader>y', ':Neotree float toggle reveal<CR>')

-- Navigation
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

-- Splits
vim.keymap.set('n', '|', ':vsplit k<CR>')
vim.keymap.set('n', '\\', ':split k<CR>')

-- Tabs
vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>')
vim.keymap.set('n', '<s-Tab>', ':BufferLineCyclePrev<CR>')
vim.keymap.set('n', '<leader>x', ':BufferLinePickClose<CR>')
vim.keymap.set('n', '<c-x>', ':BufferLineCloseOthers<CR>')
	
