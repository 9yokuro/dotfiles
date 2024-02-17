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
set path=./**100,/usr/include**100
set shell=/usr/bin/zsh
set splitbelow
set splitright
set noswapfile
set nowrap
set wildmenu
set writebackup

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
syntax off
set termguicolors
set background=dark
set laststatus=0
set number
set relativenumber
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

# Keymaps

# General
inoremap jj <Esc>

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

# Buffer
nnoremap [b <Cmd>bprevious<CR>
nnoremap ]b <Cmd>bnext<CR>

# QuickFix
nnoremap [q <Cmd>cprevious<CR>
nnoremap ]q <Cmd>cnext<CR>

# Terminal
nnoremap tt <Cmd>tab terminal<CR>
nnoremap ts <Cmd>bo terminal<CR>
nnoremap tv <Cmd>vert terminal<CR>

# VimGrep
nnoremap <Space>g :silent vimgrep 

# Netrw
nnoremap <C-n> <Cmd>silent Lexplore<CR>
