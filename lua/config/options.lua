local set = vim.opt

set.mouse = "a"
set.number = true
set.relativenumber = true
set.expandtab = true
set.tabstop = 2
set.shiftwidth = 2
set.softtabstop = 2
set.termguicolors = true
set.clipboard = "unnamedplus"
set.hlsearch = false

-- For Keymaps
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

--vim.wo.signcolumn = "yes"       -- Muestra la columna de signos de advertencia y mas. "yes" la mantiene siempre

-- vim.o.showtabline = 2           -- Muestra las pestañas de archivos abiertos en la parte superior.
vim.o.wrap = false

-- Hightlight
--vim.api.nvim_set_hl(0, "Comment", { italic = true })
--vim.api.nvim_set_hl(0, "Keyword", { bold = true })
--vim.api.nvim_set_hl(0, "Function", { bold = true })
--vim.api.nvim_set_hl(0, "Statement", { bold = true })

-- Disable Netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

--vim.cmd [[
--  highlight link @function Function
--  highlight link @function.call Function
--  highlight Function guifg=#7aa2f7 gui=bold
--]]
