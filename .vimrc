vim9script

const group = "vimrc"

# Plugins
const dpp_base = "~/.cache/dpp/"

const dpp_src = dpp_base .. "repos/github.com/Shougo/dpp.vim"

const denops_src = dpp_base .. "repos/github.com/vim-denops/denops.vim"

def InstallDpp()
    const dpp_extensions = [
        "Shougo/dpp-ext-installer",
        "Shougo/dpp-ext-lazy",
        "Shougo/dpp-ext-toml",
        "Shougo/dpp-protocol-git",
    ]

    const dpp_path = dpp_base .. "repos/github.com/"

    const github = "https://github.com/"

    if isdirectory(dpp_src) == 0
        system("git clone --depth 1 https://github.com/Shougo/dpp.vim " .. dpp_src)
    endif

    execute "set runtimepath^=" .. dpp_src

    for extension in dpp_extensions
        var url = github .. extension

        var path = dpp_path .. extension

        if isdirectory(path) == 0
            system("git clone --depth 1 " .. url .. " " .. path)
        endif

        execute "set runtimepath^=" .. path
    endfor

    if isdirectory(denops_src) == 0
        system("git clone --depth 1 https://github.com/vim-denops/denops.vim " .. denops_src)
    endif
enddef

def SetupDpp()
    if dpp_base->dpp#min#load_state()
        execute "set runtimepath^=" .. denops_src

        augroup dpp
            autocmd!
            autocmd User DenopsReady call dpp#make_state(dpp_base, "~/.config/vim/dpp.ts")
        augroup END
    endif
enddef

InstallDpp()

SetupDpp()

def DduSettings()
    nnoremap <buffer><silent> <CR> <Cmd>call ddu#ui#do_action("itemAction")<CR>

    nnoremap <buffer><silent> <Space> <Cmd>call ddu#ui#do_action("toggleSelectItem")<CR>

    nnoremap <buffer><silent> i <Cmd>call ddu#ui#do_action("openFilterWindow")<CR>

    nnoremap <buffer><silent> q <Cmd>call ddu#ui#do_action("quit")<CR>
enddef

def DduFilterSettings()
    inoremap <buffer><silent> <CR> <Esc><Cmd>close<CR>

    nnoremap <buffer><silent> <CR> <Cmd>close<CR>

    nnoremap <buffer><silent> q <Cmd>close<CR>
enddef

# Autocmds
augroup group
    autocmd!
    autocmd FileType json,nix,yaml set shiftwidth=2 softtabstop=2 tabstop=2
    autocmd FileType fern set nonumber norelativenumber
    autocmd QuickFixCmdPost *grep*,*make* silent cwindow
    autocmd VimEnter * colorscheme onedark
    autocmd VimEnter * hi FoldColumn guibg=NONE ctermbg=NONE
    autocmd VimEnter * hi SignColumn guibg=NONE ctermbg=NONE
    autocmd VimEnter * hi Normal guibg=NONE ctermbg=NONE
    autocmd VimEnter * hi NormalNC guibg=NONE ctermbg=NONE
    autocmd VimEnter * call ddu#custom#patch_global({
    \   ui: "ff",
    \   uiParams: {
    \       ff: {
    \           startFilter: v:true,
    \       }
    \   },
    \   sources: [{ name: "file_rec" }],
    \   sourceOptions: {
    \       _: {
    \           matchers: ["matcher_substring"],
    \       },
    \   },
    \   kindOptions: {
    \       file: {
    \           defaultAction: "open",
    \       },
    \   },
    \  	})

    autocmd FileType ddu-ff DduSettings()

    autocmd FileType ddu-ff-filter DduFilterSettings()
augroup END

# Options
def EnableOptions(options: list<string>)
    for option in options
        execute "set " .. option
    endfor
enddef

def DisableOptions(options: list<string>)
    for option in options
        execute "set no" .. option
    endfor
enddef

def DisableBuiltinPlugins(plugins: list<string>)
    for plugin in plugins
        execute "g:" .. plugin .. " = 1"
    endfor
enddef

def SetOptionsToNumber(options: list<string>, value: number)
    for option in options
        execute "set " .. option .. "=" .. value
    endfor
enddef

def SetOptionsToString(options: list<string>, value: string)
    for option in options
        execute "set " .. option .. "=" .. value
    endfor
enddef

const enabled_options = [
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
    "termguicolors",
    "relativenumber",
    "smartcase",
    "smartindent",
    "smarttab",
    "splitbelow",
    "splitright",
    "ttyfast",
    "wildmenu",
    "writebackup",
]

const disabled_options = [
    "backup",
    "fsync",
    "ruler",
    "swapfile",
    "title",
    "wrap",
]

const disabled_builtin_plugins = [
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
]

const set_to_0 = [
    "laststatus",
    "showtabline",
]

const set_to_4 = [
    "shiftwidth",
    "softtabstop",
    "tabstop",
]

const set_to_utf_8 = [
    "encoding",
    "fileencoding",
]

EnableOptions(enabled_options)

DisableOptions(disabled_options)

DisableBuiltinPlugins(disabled_builtin_plugins)

SetOptionsToNumber(set_to_0, 0)

SetOptionsToNumber(set_to_4, 4)

SetOptionsToString(set_to_utf_8, "utf-8")

# Fern
g:fern#renderer = "nerdfont"

# Miscellaneous

syntax on

set ambiwidth=single

set background=dark

set clipboard+=unnamed,unnamedplus

set path+=.**100,/usr/include**100

set shell=zsh

set statusline=─

set fillchars+=stl:-,stlnc:─,vert:│,eob:\\x20

highlight! link StatusLine Comment

highlight! link StatusLineNC Comment

highlight! link VertSplit Comment

# Keymaps

# Buffer
nnoremap [b <Cmd>bprevious<CR>

nnoremap ]b <Cmd>bnext<CR>

# Fern
nnoremap <Space>f <Cmd>Fern . -drawer -reveal=% -toggle<CR>

# Miscellaneous
g:mapleader = ";"

inoremap jj <Cmd>stopinsert<CR>

# Ddu
nnoremap <leader>fr <Cmd>Ddu file_rec<CR>

nnoremap <leader>ff <Cmd>Ddu file<CR>

nnoremap <leader>fb <Cmd>Ddu buffer<CR>

# Quickfix
nnoremap [q <Cmd>cprevious<CR>

nnoremap ]q <Cmd>cnext<CR>

# Terminal
nnoremap tt <Cmd>tab terminal<CR>

nnoremap ts <Cmd>bo terminal<CR>

nnoremap tv <Cmd>vert terminal<CR>

# Vimgrep
nnoremap <Space>g :silent vimgrep 

# Window
nnoremap ss <Cmd>split<CR>

nnoremap sv <Cmd>vsplit<CR>

nnoremap sc <Cmd>wincmd c<CR>

nnoremap sh <Cmd>wincmd h<CR>

nnoremap sj <Cmd>wincmd j<CR>

nnoremap sk <Cmd>wincmd k<CR>

nnoremap sl <Cmd>wincmd l<CR>

nnoremap sH <Cmd>wincmd H<CR>

nnoremap sJ <Cmd>wincmd J<CR>

nnoremap sK <Cmd>wincmd K<CR>

nnoremap sL <Cmd>wincmd L<CR>

set runtimepath^=~/code/genprime.vim

g:denops#debug = 1
