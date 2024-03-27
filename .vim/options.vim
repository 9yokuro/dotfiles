vim9script

#=========
# Options
#=========

export def Setup()
  #============
  # Appearance
  #============

  # Enable syntax highlighting
  syntax enable

  set background=dark

  set conceallevel=0

  set cmdheight=1

  set fillchars=stl:─,stlnc:─,vert:│,fold:-,foldopen:,foldclose:,foldsep:│,eob:\\x20

  set foldcolumn=0

  # Never show status line.
  set laststatus=0

  set list

  set listchars=tab:─,trail:󱁐,extends:,precedes:,eol:,nbsp:

  set nocursorcolumn

  set nocursorline

  set noruler

  set noshowcmd

  set noshowmode

  set nowrap

  set number

  set pumheight=10

  set relativenumber

  # Never show tab line.
  set showtabline=0

  set signcolumn=number

  set statusline=─

  set termguicolors

  set title

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

  #=========
  # Folding
  #=========

  set foldlevel=99

  set foldlevelstart=99

  set foldmethod=manual

  #=============
  # Indentation
  #=============

  set autoindent

  set breakindent

  set copyindent

  set expandtab

  set preserveindent

  set shiftwidth=2

  set smartindent

  set smarttab

  set softtabstop=2

  set tabstop=2

  #===============
  # Miscellaneous
  #===============

  set autochdir

  set autoread

  set backspace=indent,eol,start

  set belloff=all

  set confirm

  set equalalways

  set fileformat=unix

  set hidden

  set history=100

  set infercase

  set lazyredraw

  set matchpairs=(:),{:},[:],<:>

  set matchtime=1

  set mouse=a

  set nofsync

  set noswapfile

  set path^=.**,/usr/include**

  set scrolloff=0

  set shell=fish

  set showmatch

  set spell

  set spelllang=en,cjk

  set splitbelow

  set splitright

  set tags=tags;,./tags;

  set timeoutlen=500

  set virtualedit=block

  set wildchar=<Tab>

  set wildmenu

  set wildmode=full

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

  #======
  # grep
  #======
  set grepformat=%f:%l:%c:%m,%f:%l:%m

  set grepprg=rg\ --vimgrep\ --no-heading\ $*
enddef
