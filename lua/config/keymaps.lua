local map = vim.keymap.set
local defaults = { noremap = true, silent = true }

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Neovim
-- Tab Navigation
map("n", "<leader>tn", ":tabnew<CR>", { desc = "New Tab"})
map("n", "<leader>tx", ":tabclose<CR>", { desc = "Close Tab" })
map("n", "<leader>tl", ":tabnext<CR>", { desc = "Next Tab" })
map("n", "<leader>th", ":tabprevious<CR>", { desc = "Previous Tab" })

map("n", "<leader>vs", ":vsplit<CR>", defaults)

--Nvim-Tree
map("n", "<leader>e", "<CMD>NvimTreeToggle<CR>", defaults)

-- ToggleTerm
-- Execute Python file
map(
  "n",
  "<leader>jp",
  ":w | :TermExec cmd='python3 \"%\"' size=15 direction=horizontal go_back=0<CR>",
  { noremap = true, desc = "Run Python File" }
)

-- Keymap para salir de toggleterm y subir al código
vim.keymap.set('t', '<C-k>', [[<C-\><C-n><C-w>k]], defaults)

-- Bufferline
-- vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>", defaults)
-- vim.keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", defaults)
-- vim.keymap.set("n", "<leader>bc", ":bd<CR>", defaults)
-- vim.keymap.set("n", "<leader>bo", ":%bd|e#|bd#<CR>", defaults)
