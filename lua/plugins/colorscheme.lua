--return {
--  "folke/tokyonight.nvim",
--  lazy = false,
--  priority = 1000,
--  config = function()
--    vim.cmd.colorscheme("tokyonight-storm")
--  end,
--}

return {
  "navarasu/onedark.nvim",
  priority = 1000,
  config = function()
    require("onedark").setup {
      style = "deep"
    }
    require('onedark').load()
  end
}

--return {
--  "catppuccin/nvim",
--  name = "catppuccin",
--  priority = 1000,
--  config = function ()
--    vim.cmd([[colorscheme catppuccin]])
--  end
--}
