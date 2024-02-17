vim9script

# Options

# General
set ambiwidth=single
set autoread
set nobackup
set clipboard=unnamed,unnamedplus
set encoding=utf-8
set fileencoding=utf-8
set nofsync
set hidden
set path=.**100,/usr/include**100
set shell=/bin/zsh
set splitbelow
set splitright
set noswapfile
set nowrap
set writebackup
set wildmenu

# Indent
set autoindent
set copyindent
set expandtab
set shiftwidth=4
set smartindent
set smarttab
set tabstop=4

augroup indent
    autocmd!
    autocmd VimEnter *.json,*.yaml,*.yml set shiftwidth=2 tabstop=2
augroup END

# Appearance
set termguicolors
set background=dark
set laststatus=0
set number
set relativenumber
syntax off
set noruler
set showtabline=0
set notitle

# Search
set hlsearch
set ignorecase
set incsearch
set smartcase

# Netrw
g:netrw_banner = 0
g:netrw_liststyle = 3

# QuickFix
augroup quickfix
    autocmd!
    autocmd QuickFixCmdPost *grep*,*make* silent cwindow
augroup END

# Tags
set tags=./tags;,tags;

# Default plugins
g:did_indent_on = 1
g:did_install_default_menus = 1
g:did_install_syntax_menu = 1
g:did_load_ftplugin = 1
g:loaded_2html_plugin = 1
g:loaded_gzip = 1
g:loaded_man = 1
g:loaded_matchit = 1
g:loaded_matchparen = 1
g:loaded_remote_plugins = 1
g:loaded_shada_plugin = 1
g:loaded_spellfile_plugin = 1
g:loaded_tarPlugin = 1
g:loaded_tar = 1
g:loaded_tutor_mode_plugin = 1
g:loaded_zipPlugin = 1
g:loaded_zip = 1
g:skip_loading_mswin = 1
g:ebuild_create_on_empty = 1
g:glep_create_on_empty = 1
g:loaded_gentoo_common = 1
g:loaded_newebuild = 1
g:loaded_newglep = 1
g:loaded_newinitd = 1
g:loaded_newmetadata = 1

# Keymaps

# General
g:mapleader = ";"
inoremap jj <Esc>

# Window
nnoremap ss <cmd>split<CR>
nnoremap sv <cmd>vsplit<CR>
nnoremap sc <cmd>wincmd c<CR>
nnoremap sh <cmd>wincmd h<CR>
nnoremap sj <cmd>wincmd j<CR>
nnoremap sk <cmd>wincmd k<CR>
nnoremap sl <cmd>wincmd l<CR>
nnoremap sH <cmd>wincmd H<CR>
nnoremap sJ <cmd>wincmd J<CR>
nnoremap sK <cmd>wincmd K<CR>
nnoremap sL <cmd>wincmd L<CR>

# Terminal
nnoremap tt <cmd>tab terminal<CR>
nnoremap ts <cmd>bo terminal<CR>
nnoremap tv <cmd>vert terminal<CR>

# VimGrep
nnoremap <leader>g :silent vimgrep 

# Netrw
nnoremap <C-n> <cmd>silent Lexplore<CR>
