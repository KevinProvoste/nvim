return {
	"stevearc/conform.nvim",
	main = "conform",
	opts = {
		formatters_by_ft = {
			python = { "black" },
			lua = { "stylua" },
			javascript = { "prettier" },
			html = { "prettier" },
			css = { "prettier" },
			json = { "prettier" },
			markdown = { "prettier" },
		},
	},
}
