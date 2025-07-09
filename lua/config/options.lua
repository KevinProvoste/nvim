local set = vim.opt

set.mouse = "a"                 -- Habilita el mouse.
set.number = true               -- Muestra números de línea.
set.relativenumber = true       -- Muestra números relativos a la ventana.
set.expandtab = true            -- Usa espacios en vez de tabs en el buffer.
set.tabstop = 2                 -- Tamano del tabulador.
set.shiftwidth = 2              -- Tamano del indentado.
set.softtabstop = 2             -- Tab en modo insert.
set.termguicolors = true        -- Habilita colores RGB.
set.clipboard = "unnamedplus"   -- Portapapeles del sistema.
set.hlsearch = false            -- Desabilita el resaltado luego de la busqueda.

-- vim.wo.signcolumn = "yes"       -- Muestra la columna de signos de advertencia y mas. "yes" la mantiene siempre

-- vim.o.showtabline = 2           -- Muestra las pestañas de archivos abiertos en la parte superior.
-- vim.o.wrap = false -- El largo de la linea de codigo no se ajusta al tamaño de la ventana.

-- Configuración básica de resaltado con bold
vim.api.nvim_set_hl(0, "Comment", { italic = true })          -- Comentarios en cursiva
vim.api.nvim_set_hl(0, "Keyword", { bold = true })            -- Palabras clave en negrita
vim.api.nvim_set_hl(0, "Function", { bold = true })           -- Funciones en negrita
vim.api.nvim_set_hl(0, "Statement", { bold = true })          -- Sentencias en negrita

-- Disable Netrw (Porque es sustituido por Nvim-Tree)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
