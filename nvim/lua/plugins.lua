-- Plugins
local cmd = vim.cmd

-- Bootstrap plum.nvim
local plumpath = vim.fn.stdpath("data") .. "/site/pack/plum/opt/plum.nvim"

if not vim.loop.fs_stat(plumpath) then
	vim.fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/9yokuro/plum.nvim.git",
		plumpath,
	})
end

cmd.packadd("plum.nvim")

-- Plugin manager
require("plum").setup({
	"9yokuro/plum.nvim",
	"9yokuro/afmt.nvim",
	"folke/tokyonight.nvim",
	"nvim-treesitter/nvim-treesitter",
})

-- Color scheme
require("tokyonight").setup({
	style = "night",
	transparent = true,
})

cmd.colorscheme("tokyonight")

-- Tree sitter
require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"lua",
		"rust",
		"python",
		"markdown",
		"markdown_inline",
		"cpp",
		"c",
		"go",
		"typescript",
		"javascript",
		"html",
		"json",
		"yaml",
		"toml",
		"nix",
	},
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
})

-- Code formatter
require("afmt").setup({
	{
		pattern = "*.rs",
		command = "rustfmt",
	},

	{
		pattern = "*.go",
		command = "go fmt",
	},

	{
		pattern = "*.lua",
		command = "stylua",
	},

	{
		pattern = "*.nix",
		command = "nixpkgs-fmt",
	},
})
