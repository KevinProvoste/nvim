return {
	cmd = { "vscode-css-language-server", "--stdio" },
	filetypes = { "css" },
	root_markers = { "package.json", ".git" },
	single_file_support = true,
	settings = {},
	init_options = {
		provideFormatter = true,
	},
}
