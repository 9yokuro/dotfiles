-- Plugins
local autocmd = vim.api.nvim_create_autocmd

local cmd = vim.cmd

local g = vim.g

local group = "init.lua"

local opt = vim.opt

local utils = require("utils")

local set_options = utils.set_options

local nmap = utils.nmap

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
	{
		repo = "9yokuro/plum.nvim",
	},

	{
		repo = "9yokuro/afmt.nvim",
		lazy = true,
	},

	{
		repo = "folke/tokyonight.nvim",
		lazy = true,
	},

	{
		repo = "nvim-treesitter/nvim-treesitter",
	},

	{
		repo = "lambdalisue/fern.vim",
		lazy = true,
	},

	{
		repo = "lambdalisue/nerdfont.vim",
		lazy = true,
	},

	{
		repo = "lambdalisue/fern-renderer-nerdfont.vim",
		lazy = true,
	},

	{
		repo = "nvim-telescope/telescope.nvim",
		lazy = true,
	},

	{
		repo = "nvim-lua/plenary.nvim",
		lazy = true,
	},

	{
		repo = "nvim-tree/nvim-web-devicons",
		lazy = true,
	},
})

-- Color scheme
autocmd("VimEnter", {
	group = group,
	callback = function()
		require("tokyonight").setup({
			style = "night",
			transparent = true,
			on_highlights = function(hl, c)
				hl.Statusline = hl.Comment

				hl.StatuslineNC = hl.Comment

				hl.VirtSplit = hl.Comment
			end,
		})

		opt.statusline = "─"

		opt.fillchars:append({ stl = "─", stlnc = "─", vert = "│", eob = "\\x20" })

		cmd.colorscheme("tokyonight")
	end,
})

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
autocmd("VimEnter", {
	group = group,
	callback = function()
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
	end,
})

-- Fern
g["fern#renderer"] = "nerdfont"

autocmd("FileType", {
	group = group,
	pattern = "fern",
	callback = function()
		local options = {
			"number",
			"relativenumber",
		}

		set_options(options, false)
	end,
})

-- Telescope
vim.api.nvim_create_autocmd("VimEnter", {
	group = group,
	callback = function()
		local telescope = require("telescope.builtin")

		nmap("<leader>ff", telescope.find_files)

		nmap("<leader>fg", telescope.live_grep)

		nmap("<leader>fb", telescope.buffers)

		nmap("<leader>fh", telescope.help_tags)
	end,
})
