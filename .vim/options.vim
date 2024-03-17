vim9script

# Options
export def Appearance()
  colorscheme alcedo

  syntax enable

  set background=dark

  set fillchars+=stl:─,stlnc:─,vert:│,eob:\\x20

  set laststatus=0

  set noruler

  set notitle

  set nowrap

  set number

  set relativenumber

  set showtabline=0

  set statusline=─

  set termguicolors
enddef

export def Encoding()
  set ambiwidth=single

  set encoding=utf-8

  set fileencoding=utf-8
enddef

export def Indentation()
  set autoindent

  set copyindent

  set expandtab

  set shiftwidth=2

  set smartindent

  set smarttab

  set softtabstop=2

  set tabstop=2
enddef

export def Search()
  set hlsearch

  set ignorecase

  set incsearch

  set smartcase
enddef

export def Terminal()
  set ttyfast
enddef

export def Miscellaneous()
  set autoread

  set clipboard^=unnamed,unnamedplus

  set hidden

  set lazyredraw

  set nobackup

  set nofsync

  set noswapfile

  set path^=.**,/usr/include**

  set shell=zsh

  set splitbelow

  set splitright

  set wildmenu

  set writebackup
enddef

export def All()
  Appearance()

  Encoding()

  Indentation()

  Search()

  Terminal()
  
  Miscellaneous()
enddef
