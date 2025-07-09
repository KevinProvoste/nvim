--return {
--  "folke/tokyonight.nvim",
--  lazy = false, 
--  priority = 1000,
--  config = function()
--    vim.cmd([[colorscheme tokyonight-storm]])
--  end,
--}

return {
  "navarasu/onedark.nvim",
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    require('onedark').setup {
      style = 'deep',
      transparent = false,  -- Show/hide background
    }
    -- Enable theme
    require('onedark').load()
  end
}
