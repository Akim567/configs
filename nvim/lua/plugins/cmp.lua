local M = {
	"hrsh7th/nvim-cmp",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-nvim-lua",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		"saadparwaiz1/cmp_luasnip",
		"L3MON4D3/LuaSnip",
	},
}

M.config = function()
	local cmp = require("cmp")
	vim.opt.completeopt = { "menu", "menuone", "noselect" }

	cmp.setup({
		snippet = {
			expand = function(args)
				require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
			end,
		},
		window = {
			-- completion = cmp.config.window.bordered(),
			-- documentation = cmp.config.window.bordered(),
		},
		mapping = cmp.mapping.preset.insert({
			["<Tab>"] = cmp.mapping.select_next_item(),            -- Следующий элемент
			["<S-Tab>"] = cmp.mapping.select_prev_item(),          -- Предыдущий элемент
			["<C-b>"] = cmp.mapping.scroll_docs(-4),               -- Прокрутка вверх
			["<C-f>"] = cmp.mapping.scroll_docs(4),                -- Прокрутка вниз
			["<C-Space>"] = cmp.mapping.complete(),                -- Вызов автодополнения
			["<C-e>"] = cmp.mapping.abort(),                       -- Отмена
			["<CR>"] = cmp.mapping.confirm({ select = true }),     -- Принять выбранный элемент
		}),
		sources = cmp.config.sources({
			{ name = "nvim_lsp" },
			{ name = "nvim_lua" },
			{ name = "luasnip" }, -- For luasnip users.
			-- { name = "orgmode" },
		}, {
			{ name = "buffer" },
			{ name = "path" },
		}),
	})

	cmp.setup.cmdline(":", {
		mapping = cmp.mapping.preset.cmdline(),
		sources = cmp.config.sources({
			{ name = "path" },
		}, {
			{ name = "cmdline" },
		}),
	})
end

return M
