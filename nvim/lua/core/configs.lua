-- Line Numbers
vim.wo.number = true -- включение нумерации строк
vim.wo.relativenumber = true -- относительная нумерация строк
vim.opt.cursorline = true -- подсветка строки, в которой находится курсор

-- Mouse
vim.opt.mouse = "a" -- включение поддержки мыши во всех режимах
vim.opt.mousefocus = true -- перемещение фокуса на окно при наведении мыши

-- Clipboard
vim.opt.clipboard = "unnamedplus" -- использование системного буфера обмена для копирования/вставки

-- Indent Settings
vim.opt.shiftwidth = 4 -- количество пробелов для отступа при использовании табуляции
vim.opt.tabstop = 4 -- ширина табуляции
vim.opt.softtabstop = 4 -- количество пробелов, которые будут добавлены при табуляции
	
-- Other
vim.opt.scrolloff = 8 -- минимальное количество строк, которое остается видимым при прокрутке
vim.opt.wrap = false -- отключение переноса строк
vim.opt.termguicolors = true -- включение поддержки 24-битного цвета
vim.opt.completeopt = 'menu,menuone,noselect,' -- включение встроенного функционала автозаполнения
--	'menu' - отображает меню с предложениями
--	'menuone' - отображает меню, даже если доступен только один вариант
--	'noselect' - первый элемент меню не будет выбран автоматически


