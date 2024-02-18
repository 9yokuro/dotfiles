-- Options

-- Appearance
vim.api.nvim_command("syntax off")
vim.g.termguicolors = true
vim.opt.background = "dark"
vim.opt.cmdheight = 0
vim.opt.laststatus = 0
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.ruler = false
vim.opt.showtabline = 0
vim.opt.title = false

-- General
vim.opt.ambiwidth = "single"
vim.opt.autoread = true
vim.opt.backup = false
vim.opt.clipboard:append({ "unnamed", "unnamedplus" })
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.opt.fsync = false
vim.opt.hidden = true
vim.opt.path:append({ ".**100", "/usr/include**100" })
vim.opt.shell = "/usr/bin/zsh"
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.swapfile = false
vim.opt.wrap = false
vim.opt.writebackup = true

-- Indent
vim.opt.autoindent = true
vim.opt.copyindent = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.tabstop = 4

vim.api.nvim_create_augroup("indent", {})
vim.api.nvim_create_autocmd("VimEnter", {
	group = "indent",
	pattern = { "*.json", "*.yaml", "*.yml" },
	callback = function()
		vim.opt.shiftwidth = 2
		vim.opt.tabstop = 2
	end,
})

-- Netrw
vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 3

-- QuickFix
vim.api.nvim_create_augroup("quickfix", {})
vim.api.nvim_create_autocmd("QuickFixCmdPost", {
	group = "quickfix",
	pattern = { "*grep*", "*make*" },
	command = "silent cwindow",
})

-- Search
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.incsearch = true
vim.opt.smartcase = true

-- Standard plugins
vim.g.did_indent_on = 1
vim.g.did_install_default_menus = 1
vim.g.did_install_syntax_menu = 1
vim.g.did_load_ftplugin = 1
vim.g.loaded_2html_plugin = 1
vim.g.loaded_gzip = 1
vim.g.loaded_man = 1
vim.g.loaded_matchit = 1
vim.g.loaded_matchparen = 1
vim.g.loaded_remote_plugins = 1
vim.g.loaded_shada_plugin = 1
vim.g.loaded_spellfile_plugin = 1
vim.g.loaded_tar = 1
vim.g.loaded_tarPlugin = 1
vim.g.loaded_tutor_mode_plugin = 1
vim.g.loaded_zip = 1
vim.g.loaded_zipPlugin = 1
vim.g.skip_loading_mswin = 1

-- Tags
vim.opt.tags:append({ "./tags;", "tags;" })

-- Terminal
vim.api.nvim_create_augroup("terminal", {})
vim.api.nvim_create_autocmd("TermOpen", {
	group = "terminal",
	callback = function()
		vim.api.nvim_command("startinsert")
		vim.opt.number = false
		vim.opt.relativenumber = false
	end,
})

vim.api.nvim_create_autocmd("TermClose", {
	group = "terminal",
	command = "bdelete",
})
