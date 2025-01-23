return {
	{
		'neovim/nvim-lspconfig',
		config = function()
			local lspconfig = require('lspconfig')
			lspconfig.lua_ls.setup{}
			vim.api.nvim_create_autocmd('LspAttach', {
				group = vim.api.nvim_create_augroup('UserLspConfig', {}),
			    callback = function(ev)
			    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

			    local opts = { buffer = ev.buf }
				vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts) -- Переход к определению
				vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts) -- Просмотр документации
				vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts) -- Переход к реализации
				vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts) -- Вызов помощи по сигнатуре
				vim.keymap.set('n', '<Leader>D', vim.lsp.buf.type_definition, opts) -- Переход к определению типа
				vim.keymap.set('n', '<Leader>lr', vim.lsp.buf.rename, opts) -- Переименование
				vim.keymap.set({ 'n', 'v' }, '<Leader>la', vim.lsp.buf.code_action, opts) -- Действия кода
				vim.keymap.set('n', '<Leader>lf', 
				function()	vim.lsp.buf.format({ async = true }) end, opts) -- Форматирование кода
			end
		})

	end
	}
}	
