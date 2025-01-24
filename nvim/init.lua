-- Basic Config
require("core.configs") -- базовые настройки
require("core.mappings") -- настройка кнопок
require("core.lazy")  -- настройка менеджера плагинов lazy
print(vim.opt.termguicolors:get()) -- Должно вывести true
