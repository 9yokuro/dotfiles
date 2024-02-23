-- Options
local opt = vim.opt

-- Appearance
vim.cmd.syntax("on")

vim.g.termguicolors = true

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

vim.api.nvim_create_augroup(group_name_indent, {})

vim.api.nvim_create_autocmd("FileType", {
	group = group_name_indent,
	pattern = { "json", "yaml" },
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

vim.api.nvim_create_augroup(group_name_quickfix, {})

vim.api.nvim_create_autocmd("QuickFixCmdPost", {
	group = group_name_quickfix,
	pattern = { "*grep*", "*make*" },
	command = "silent cwindow",
})

-- Search
opt.hlsearch = true

opt.ignorecase = true

opt.incsearch = true

opt.smartcase = true

-- Standard_plugins
vim.g.did_indent_on = 1

vim.g.did_install_default_menus = 1

vim.g.did_install_syntax_menu = 1

vim.g.did_load_ftplugin = 1

vim.g.ebuild_create_on_empty = 1

vim.g.glep_create_on_empty = 1

vim.g.loaded_2html_plugin = 1

vim.g.loaded_gentoo_common = 1

vim.g.loaded_getscript = 1

vim.g.loaded_getscriptPlugin = 1

vim.g.loaded_gzip = 1

vim.g.loaded_logipat = 1

vim.g.loaded_logiPat = 1

vim.g.loaded_man = 1

vim.g.loaded_matchit = 1

vim.g.loaded_matchparen = 1

vim.g.loaded_netrw = 1

vim.g.loaded_netrwPlugin = 1

vim.g.loaded_newebuild = 1

vim.g.loaded_newglep = 1

vim.g.loaded_newinitd = 1

vim.g.loaded_newmetadata = 1

vim.g.loaded_remote_plugins = 1

vim.g.loaded_rrhelper = 1

vim.g.loaded_shada_plugin = 1

vim.g.loaded_spellfile_plugin = 1

vim.g.loaded_tar = 1

vim.g.loaded_tarPlugin = 1

vim.g.loaded_tutor_mode_plugin = 1

vim.g.loaded_vimball = 1

vim.g.loaded_vimballPlugin = 1

vim.g.loaded_zip = 1

vim.g.loaded_zipPlugin = 1

vim.g.loadedzip = 1

vim.g.skip_loading_mswin = 1

-- Terminal
opt.lazyredraw = true

opt.ttyfast = true

local group_name_terminal = "terminal"

vim.api.nvim_create_augroup(group_name_terminal, {})

vim.api.nvim_create_autocmd("TermOpen", {
	group = group_name_terminal,
	callback = function()
		vim.cmd.startinsert()

		opt.number = false

		opt.relativenumber = false
	end,
})

vim.api.nvim_create_autocmd("TermClose", {
	group = group_name_terminal,
	command = "bdelete",
})
