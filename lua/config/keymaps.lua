-- Local Variables
local map = vim.keymap.set
local defaults = { noremap = true, silent = true }

-- Navigation
map("n", "<leader>tn", ":tabnew<CR>", { desc = "New Tab"})
map("n", "<leader>tx", ":tabclose<CR>", { desc = "Close Tab" })
map("n", "<tab>", ":tabnext<CR>", { desc = "Next Tab" })
map("n", "<leader><tab>", ":tabprevious<CR>", { desc = "Previous Tab" })
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

-- Exit terminal mode and goes above the code
vim.keymap.set('t', '<C-k>', [[<C-\><C-n><C-w>k]], defaults)
