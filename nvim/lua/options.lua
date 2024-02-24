-- Options
local augroup = vim.api.nvim_create_augroup

local autocmd = vim.api.nvim_create_autocmd

local cmd = vim.cmd

local g = vim.g

local opt = vim.opt

-- Appearance
cmd.syntax("on")

g.termguicolors = true

opt.background = "dark"

opt.cmdheight = 0

opt.laststatus = 0

opt.number = true

opt.pumblend = 20

opt.relativenumber = true

opt.ruler = false

opt.showtabline = 0

opt.title = false

opt.winblend = 20

-- Indent
opt.autoindent = true

opt.copyindent = true

opt.expandtab = true

opt.shiftwidth = 4

opt.smartindent = true

opt.smarttab = true

opt.tabstop = 4

local group_name_indent = "indent"

augroup(group_name_indent, {})

autocmd("FileType", {
	group = group_name_indent,
	pattern = { "json", "nix", "yaml" },
	callback = function()
		opt.shiftwidth = 2
		opt.tabstop = 2
	end,
})

-- Miscellaneous
opt.ambiwidth = "single"

opt.autoread = true

opt.backup = false

opt.clipboard:append({ "unnamed", "unnamedplus" })

opt.encoding = "utf-8"

opt.fileencoding = "utf-8"

opt.fsync = false

opt.hidden = true

opt.path:append({ ".**100", "/usr/include**100" })

opt.shell = "zsh"

opt.splitbelow = true

opt.splitright = true

opt.swapfile = false

opt.wildmenu = true

opt.wrap = false

opt.writebackup = true

-- Quickfix
local group_name_quickfix = "quickfix"

augroup(group_name_quickfix, {})

autocmd("QuickFixCmdPost", {
	group = group_name_quickfix,
	pattern = { "*grep*", "*make*" },
	command = "silent cwindow",
})

-- Search
opt.hlsearch = true

opt.ignorecase = true

opt.incsearch = true

opt.smartcase = true

-- Standard plugins
g.did_indent_on = 1

g.did_install_default_menus = 1

g.did_install_syntax_menu = 1

g.did_load_ftplugin = 1

g.ebuild_create_on_empty = 1

g.glep_create_on_empty = 1

g.loaded_2html_plugin = 1

g.loaded_gentoo_common = 1

g.loaded_getscript = 1

g.loaded_getscriptPlugin = 1

g.loaded_gzip = 1

g.loaded_logipat = 1

g.loaded_logiPat = 1

g.loaded_man = 1

g.loaded_matchit = 1

g.loaded_matchparen = 1

g.loaded_netrw = 1

g.loaded_netrwPlugin = 1

g.loaded_newebuild = 1

g.loaded_newglep = 1

g.loaded_newinitd = 1

g.loaded_newmetadata = 1

g.loaded_remote_plugins = 1

g.loaded_rrhelper = 1

g.loaded_shada_plugin = 1

g.loaded_spellfile_plugin = 1

g.loaded_tar = 1

g.loaded_tarPlugin = 1

g.loaded_tutor_mode_plugin = 1

g.loaded_vimball = 1

g.loaded_vimballPlugin = 1

g.loaded_zip = 1

g.loaded_zipPlugin = 1

g.loadedzip = 1

g.skip_loading_mswin = 1

-- Terminal
opt.lazyredraw = true

opt.ttyfast = true

local group_name_terminal = "terminal"

augroup(group_name_terminal, {})

autocmd("TermOpen", {
	group = group_name_terminal,
	callback = function()
		cmd.startinsert()

		opt.number = false

		opt.relativenumber = false
	end,
})

autocmd("TermClose", {
	group = group_name_terminal,
	command = "bdelete",
})
