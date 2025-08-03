-- Local Variables
local map = vim.keymap.set
local defaults = { noremap = true, silent = true }

-- Navigation
map("n", "<leader>tn", "<CMD>tabnew<CR>", { desc = "New Tab" })
map("n", "<leader>tx", "<CMD>tabclose<CR>", { desc = "Close Tab" })
map("n", "<Tab>", "<CMD>bnext<CR>", { desc = "Next Buffer" })
map("n", "<leader><Tab>", "<CMD>bprevious<CR>", { desc = "Previous Buffer" })
map("n", "<leader>bd", "<CMD>bdelete<CR>", { desc = "Close Buffer" })
map("n", "<leader>vs", "<CMD>vsplit<CR>", defaults)

-- NeoTree
map("n", "<leader>e", "<CMD>Neotree toggle<CR>", defaults)

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
	":w | :TermExec cmd='python3 \"%\"' size=15 direction=float go_back=0<CR>",
	{ noremap = true, desc = "Run Python File" }
)

-- Exit terminal mode and goes above the code
map("t", "<C-k>", [[<C-\><C-n><C-w>k]], defaults)

-- Conform
map({ "n", "v" }, "<leader>fo", function()
  require("conform").format({ async = true, lsp_fallback = true })
end, { desc = "Formatear archivo" })
