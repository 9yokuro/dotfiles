-- Options
local g = vim.g

local opt = vim.opt

local function set_options(options, value)
	for i = 1, #options do
		opt[options[i]] = value
	end
end

local function set_global_variables(global_variables, value)
	for i = 1, #global_variables do
		g[global_variables[i]] = value
	end
end

local disabled_options = {
	"backup",
	"fsync",
	"ruler",
	"swapfile",
	"title",
	"wrap",
}

local disabled_plugins = {
	"did_indent_on",
	"did_install_default_menus",
	"did_install_syntax_menu",
	"did_load_ftplugin",
	"ebuild_create_on_empty",
	"glep_create_on_empty",
	"loaded_2html_plugin",
	"loaded_gentoo_common",
	"loaded_getscript",
	"loaded_getscriptPlugin",
	"loaded_gzip",
	"loaded_logipat",
	"loaded_logiPat",
	"loaded_man",
	"loaded_matchit",
	"loaded_matchparen",
	"loaded_netrw",
	"loaded_netrwPlugin",
	"loaded_newebuild",
	"loaded_newglep",
	"loaded_newinitd",
	"loaded_newmetadata",
	"loaded_remote_plugins",
	"loaded_rrhelper",
	"loaded_shada_plugin",
	"loaded_spellfile_plugin",
	"loaded_tar",
	"loaded_tarPlugin",
	"loaded_tutor_mode_plugin",
	"loaded_vimball",
	"loaded_vimballPlugin",
	"loaded_zip",
	"loaded_zipPlugin",
	"loadedzip",
	"skip_loading_mswin",
}

local enabled_options = {
	"autoindent",
	"autoread",
	"copyindent",
	"expandtab",
	"hidden",
	"hlsearch",
	"ignorecase",
	"incsearch",
	"lazyredraw",
	"number",
	"relativenumber",
	"smartcase",
	"smartindent",
	"smarttab",
	"splitbelow",
	"splitright",
	"ttyfast",
	"wildmenu",
	"writebackup",
}

local set_to_0 = {
	"cmdheight",
	"laststatus",
	"showtabline",
}

local set_to_4 = {
	"shiftwidth",
	"softtabstop",
	"tabstop",
}

local set_to_20 = {
	"pumblend",
	"winblend",
}

local set_to_utf_8 = {
	"encoding",
	"fileencoding",
}

set_global_variables(disabled_plugins, 1)

set_options(disabled_options, false)

set_options(enabled_options, true)

set_options(set_to_0, 0)

set_options(set_to_4, 4)

set_options(set_to_20, 20)

set_options(set_to_utf_8, "utf-8")

-- Miscellaneous
vim.cmd.syntax("on")

g.termguicolors = true

opt.ambiwidth = "single"

opt.background = "dark"

opt.clipboard:append({ "unnamed", "unnamedplus" })

opt.path:append({ ".**100", "/usr/include**100" })

opt.shell = "zsh"
