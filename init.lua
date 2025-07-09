-- Neovim Options
require("config.options")

-- Neovim Keybinds
require("config.keymaps")

-- AutoCMDS
require("config.autocmds")

-- Installation | lazy.nvim
require("core.lazy")

-- LSP
require("core.lsp")

-- Setup | lazy.nvim
require("lazy").setup("plugins")
