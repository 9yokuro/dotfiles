-- Plugins
local augroup = vim.api.nvim_create_augroup

local autocmd = vim.api.nvim_create_autocmd

local cmd = vim.cmd

local g = vim.g

local group = "init.lua"

local opt = vim.opt

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
	"lambdalisue/fern.vim",
	"lambdalisue/fern-renderer-nerdfont.vim",
	"lambdalisue/nerdfont.vim",
	"nvim-lua/plenary.nvim",
	"nvim-telescope/telescope.nvim",
	"nvim-tree/nvim-web-devicons",
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
})

-- Fern
g["fern#renderer"] = "nerdfont"

augroup(group, {})

autocmd("FileType", {
	group = group,
	pattern = "fern",
	callback = function()
		opt.number = false

		opt.relativenumber = false
	end,
})
