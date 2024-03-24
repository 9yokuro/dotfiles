vim9script

#=========
# Options
#=========

export def Setup()
  #============
  # Appearance
  #============

  colorscheme alcedo

  syntax enable

  set background=dark

  set fillchars=stl:─,stlnc:─,vert:│,eob:\\x20

  # Never show status line.
  set laststatus=0

  set list

  set listchars=tab:─,trail:─,extends:,precedes:,eol:,nbsp:%

  set noruler

  set noshowcmd

  set noshowmode

  set title

  set nowrap

  set number

  set relativenumber

  # Never show tab line.
  set showtabline=0

  set signcolumn=number

  set statusline=─

  set termguicolors

  #========
  # Backup
  #========

  # Backup current file, deleted afterwards.
  set nobackup

  set writebackup

  #==========
  # Encoding
  #==========

  set ambiwidth=single

  set encoding=utf-8

  set fileencoding=utf-8

  #=============
  # Indentation
  #=============


  set autoindent

  set copyindent

  set expandtab

  set shiftwidth=2

  set smartindent

  set smarttab

  set softtabstop=2

  set tabstop=2

  #===============
  # Miscellaneous
  #===============

  set autoread

  set backspace=indent,eol,start

  set belloff=all

  set clipboard^=unnamed,unnamedplus

  set confirm

  set hidden

  set lazyredraw

  set mouse=a

  set nofsync

  set noswapfile

  set path^=.**,/usr/include**

  set shell=fish

  set spell

  set splitbelow

  set splitright

  set tags=tags;,./tags;

  set wildchar=<Tab>

  set wildmenu

  set wildmode=full,longest

  set wildoptions=fuzzy,pum,tagfile

  #========
  # Search
  #========

  set hlsearch

  set ignorecase

  set incsearch

  set smartcase

  set wrapscan

  #==========
  # Terminal
  #==========

  set ttyfast
enddef
