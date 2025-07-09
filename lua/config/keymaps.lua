local map = vim.keymap.set
local defaults = { noremap = true, silent = true }

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Tab Navigation
map("n", "<leader>tn", ":tabnew<CR>", { desc = "New Tab"})
map("n", "<leader>tx", ":tabclose<CR>", { desc = "Close Tab" })
map("n", "<leader>tl", ":tabnext<CR>", { desc = "Next Tab" })
map("n", "<leader>th", ":tabprevious<CR>", { desc = "Previous Tab" })

map("n", "<leader>vs", ":vsplit<CR>", defaults)

-- Execute Python file
map(
  "n",
  "<leader>jp",
  ":w | :TermExec cmd='python3 \"%\"' size=15 direction=horizontal go_back=0<CR>",
  { noremap = true, desc = "Run Python File" }
)

-- Keymap para salir de toggleterm y subir al código
vim.keymap.set('t', '<C-k>', [[<C-\><C-n><C-w>k]], defaults)

--vim.keymap.set("i", "<C-Tab>",
--  function()
--    require("blink.cmp")
--    if require("blink.cmp").show() then
--      require("blink.cmp").show_documentation()
--  end
--end, { silent = true })

-- Bufferline.nvim
vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>", {})
vim.keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", {})
vim.keymap.set("n", "<leader>bc", ":bd<CR>", {})  -- cerrar buffer actual
vim.keymap.set("n", "<leader>bo", ":%bd|e#|bd#<CR>", {}) -- cerrar todos menos el actual

