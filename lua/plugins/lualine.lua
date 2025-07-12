return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  main = "lualine",
  opts = {
    options = {
      icons_enable = true,
      theme = "auto",
      component_separators = { left = "", right = "" },
      section_separators = { left = "", right = "" },
      disabled_filetypes = {
        statusline = {},
        tabline = 100,
        winbar = 100,
      },
      ignore_focus = {},
      always_divide_middle = false,
      always_show_tabline = false,
      globalstatus = true,
      refresh = {
        statusline = 100,
        tabline = 100,
        winbar = 100
      }
    },
    sections = {
      lualine_a = {"mode"},
      lualine_b = {"branch", "diff", "diagnostics"},
      lualine_c = {"filename"},
      lualine_x = {"filetype"},
      lualine_y = {"progress"},
      lualine_z = {"location"}
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = {"filename"},
      lualine_x = {"location"},
      lualine_y = {},
      lualine_z = {}
    },
    tabline = {
      lualine_a = {},
      lualine_b = {
--          { "filetype", icon_only = true},
        { "tabs", mode = 2, max_length = vim.o.columns },
        {
          function()
            vim.o.showtabline = 1
            return ''
          end,
        }
      }
    },
    winbar = {},
    inactive_winbar = {},
    extensions = {}
  },
}
