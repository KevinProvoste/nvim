--[[return {"akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    require("bufferline").setup({
      options = {
        mode = "buffers", -- también puede ser "tabs"
        numbers = "none", -- muestra número del buffer
        diagnostics = "nvim_lsp", -- muestra errores si usas LSP
        separator_style = "none", -- "slant", "thick", "thin", "padded_slant", etc.
        show_buffer_close_icons = true,
        show_close_icon = false,
        color_icons = true, -- usa iconos con colores
      },
    })
  end,
}]]

-- Note:  Suspend.
      --  No confortable. 
      --  No closed buffers with :q.

return{}
