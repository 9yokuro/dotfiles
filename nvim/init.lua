vim.loader.enable()

require("options")

require("keymaps")

require("formatter").setup({
	{
		pattern = "*.rs",
		command = ":silent !rustfmt %",
	},

	{
		pattern = "*.go",
		command = ":silent !go fmt %",
	},

	{
		pattern = "*.lua",
		command = ":silent !stylua %",
	},
})
