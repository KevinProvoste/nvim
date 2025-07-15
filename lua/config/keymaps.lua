-- Local Variables
local map = vim.keymap.set
local defaults = { noremap = true, silent = true }

-- Navigation
map("n", "<leader>tn", "<CMD>tabnew<CR>", { desc = "New Tab"})
map("n", "<leader>tx", "<CMD>tabclose<CR>", { desc = "Close Tab" })
map("n", "<tab>", "<CMD>tabnext<CR>", { desc = "Next Tab" })
map("n", "<leader><tab>", "<CMD>tabprevious<CR>", { desc = "Previous Tab" })
map("n", "<leader>vs", "<CMD>vsplit<CR>", defaults)

--NeoTree
map("n", "<leader>e", "<CMD>Neotree<CR>", defaults)

-- Telescope
map("n", "<leader>ff", "<CMD>Telescope find_files<CR>", { desc = "Telescope find files" })
map("n", "<leader>fg", "<CMD>Telescope live_grep<CR>", { desc = "Telescope live grep" })
map("n", "<leader>fb", "<CMD>Telescope buffers<CR>", { desc = "Telescope buffers" })
map("n", "<leader>fh", "<CMD>Telescope help_tags<CR>", { desc = "Telescope help tags" })

-- ToggleTerm
-- Execute Python file
map(
  "n",
  "<leader>jp",
  ":w | :TermExec cmd='python3 \"%\"' size=15 direction=horizontal go_back=0<CR>",
  { noremap = true, desc = "Run Python File" }
)

-- Exit terminal mode and goes above the code
map("t", "<C-k>", [[<C-\><C-n><C-w>k]], defaults)
