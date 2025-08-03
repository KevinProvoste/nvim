return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		require("bufferline").setup({
			options = {
				mode = "buffers",
				numbers = "none", -- muestra número del buffer
				diagnostics = "nvim_lsp", -- muestra errores si usas LSP
				separator_style = "none", -- "slant", "thick", "thin", "padded_slant", etc.
				show_buffer_close_icons = true,
				show_close_icon = false,
				always_show_bufferline = true,
				color_icons = true,
				offsets = {
					{
						filetype = "neo-tree",
						text = "File Explorer",
						highlight = "Directory",
						text_align = "left",
						-- separator = true
					},
				},
				-- No reconoce a neo-tree como buffer. Al parecer no es necesario.
				--        custom_filter = function (bufnr)
				--          local name = vim.fn.bufname(bufnr)
				--          if name:match("neo%-tree") then
				--            return false
				--          end
				--          return true
				--        end,
			},
		})
	end,
}
