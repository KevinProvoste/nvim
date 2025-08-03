return {
	"akinsho/nvim-toggleterm.lua",
	cmd = { "TermExec", "ToggleTerm" },
	main = "toggleterm",
	opts = {
		direction = "float",
		float_opts = {
			border = "single", -- "single", "double", "shadow", "curved", etc.
			width = 100,
			height = 30,
			winblend = 0, -- transparencia (0: opaco, 100: invisible)
			highlights = {
				border = "Normal",
				background = "Normal",
			},
		},
		shell = "zsh",
		open_mapping = [[<C-\>]],
		start_in_insert = true,
		persis_size = true,
	},
}
