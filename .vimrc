vim9script

# Options

# Appearance
syntax on

set termguicolors

set background=dark

set laststatus=0

set number

set relativenumber

set noruler

set showtabline=0

set notitle

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
    autocmd FileType json,nix,yaml set shiftwidth=2 tabstop=2
augroup END

# Miscellaneous
set ambiwidth=single

set autoread

set nobackup

set clipboard+=unnamed,unnamedplus

set encoding=utf-8

set fileencoding=utf-8

set nofsync

set hidden

set path+=.**100,/usr/include**100

set shell=zsh

set splitbelow

set splitright

set noswapfile

set wildmenu

set nowrap

set writebackup

# Quickfix
augroup quickfix
    autocmd!
    autocmd QuickFixCmdPost *grep*,*make* silent cwindow
augroup END

# Search
set hlsearch

set ignorecase

set incsearch

set smartcase

# Standard plugins 
g:did_indent_on = 1

g:did_install_default_menus = 1

g:did_install_syntax_menu = 1

g:did_load_ftplugin = 1

g:ebuild_create_on_empty = 1

g:glep_create_on_empty = 1

g:loaded_2html_plugin = 1

g:loaded_gentoo_common = 1

g:loaded_getscript = 1

g:loaded_getscriptPlugin = 1

g:loaded_gzip = 1

g:loaded_logipat = 1

g:loaded_logiPat = 1

g:loaded_man = 1

g:loaded_matchit = 1

g:loaded_matchparen = 1

g:loaded_netrw = 1

g:loaded_netrwPlugin = 1

g:loaded_newebuild = 1

g:loaded_newglep = 1

g:loaded_newinitd = 1

g:loaded_newmetadata = 1

g:loaded_remote_plugins = 1

g:loaded_rrhelper = 1

g:loaded_shada_plugin = 1

g:loaded_spellfile_plugin = 1

g:loaded_tar = 1

g:loaded_tarPlugin = 1

g:loaded_tutor_mode_plugin = 1

g:loaded_vimball = 1

g:loaded_vimballPlugin = 1

g:loaded_zip = 1

g:loaded_zipPlugin = 1

g:loadedzip = 1

g:skip_loading_mswin = 1

# Terminal
set lazyredraw

set ttyfast

# Keymaps

# Buffer
nnoremap [b <Cmd>bprevious<CR>

nnoremap ]b <Cmd>bnext<CR>

# Miscellaneous
g:mapleader = ";"

inoremap jj <Cmd>stopinsert<CR>

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
