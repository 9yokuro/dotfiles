vim9script

#=========
# Options
#=========

export def Setup()
  #===
  # A
  #===

  set ambiwidth=single

  # Change the current working directory to the directory containing the file
  # which was opened or selected
  set autochdir

  # Copy indent from current line when starting a new line
  set autoindent

  # When a file has been detected to have been changed outside of Vim and it
  # has not been changed inside of Vim, automatically read it again
  set autoread

  #===
  # B
  #===

  # Use colors that look good on a dark background
  set background=dark

  # Allow backspacing over autoindent, line breaks, and start of insert
  set backspace=indent,eol,start

  # Backup current file, deleted afterwards.
  set nobackup

  # Do not ring the bell
  set belloff=all

  # Every wrapped line will continue visually indented
  set breakindent

  #===
  # C
  #===

  # Number of screen lines to use for the command-line
  set cmdheight=1

  # Show text normally
  set conceallevel=0

  # Raise a dialog asking if you wish to save the current file(s)
  set confirm

  # Copy the structure of the existing lines indent when autoindenting a new
  # line
  set copyindent

  # Do not highlight the screen column of the cursor
  set nocursorcolumn

  # Do not highlight the text line of the cursor
  set nocursorline

  #===
  # E
  #===

  # Use utf-8
  set encoding=utf-8

  # All the windows are automatically made the same size after splitting or
  # closing a window
  set equalalways

  # Use the appropriate number of spaces to insert a <Tab>
  set expandtab

  #===
  # F
  #===

  # Use utf-8
  set fileencoding=utf-8

  # Use \n
  set fileformat=unix

  # Characters to fill the statuslines, vertical separators and special lines
  # in the window
  set fillchars=stl:─,stlnc:─,vert:│,fold:-,foldopen:,foldclose:,foldsep:│,eob:\\x20

  # Do not show a column at the side of the window which indicates open and
  # closed folds
  set foldcolumn=0

  set foldlevel=99

  set foldlevelstart=99

  # Create folds manually
  set foldmethod=manual

  set nofsync

  #===
  # G
  #===

  set grepformat=%f:%l:%c:%m,%f:%l:%m

  # Use ripgrep instead of grep
  set grepprg=rg\ --vimgrep\ --no-heading\ $*

  #===
  # H
  #===

  # Hidden a buffer when it is abandoned
  set hidden

  # Highlight all matching search pattern
  set hlsearch

  set history=100

  #===
  # I
  #===

  # Ignore case in search patterns, cmdline-completion, etc
  set ignorecase

  # Enable incremental search
  set incsearch

  set infercase

  #===
  # L
  #===

  # Do not show status line.
  set laststatus=0

  set lazyredraw

  # Show invisible characters
  set list

  # Strings to use in 'list' mode and for the :list command
  set listchars=tab:─,trail:󱁐,extends:,precedes:,eol:,nbsp:

  #===
  # M
  #===

  set matchpairs=(:),{:},[:],<:>

  set matchtime=1

  # Enable the use of mouse
  set mouse=a

  #===
  # N
  #===

  # Print the line number in front of each line
  set number

  #===
  # P
  #===

  set path^=.**,/usr/include**

  set preserveindent

  set pumheight=10

  #===
  # R
  #===

  set relativenumber

  set noruler

  #===
  # S
  #===

  set scrolloff=0

  set shell=fish

  set shiftwidth=2

  set noshowcmd

  set showmatch

  set noshowmode

  # Do not show tab line.
  set showtabline=0

  set signcolumn=number

  set smartcase

  set smartindent

  set smarttab

  set softtabstop=2

  set spell

  set spelllang=en,cjk

  set splitbelow

  set splitright

  set statusline=─

  set noswapfile

  #===
  # T
  #===

  set tabstop=2

  set tags=tags;,./tags;

  set termguicolors

  set timeoutlen=500

  set title

  set ttyfast

  #===
  # V
  #===

  set virtualedit=block

  #===
  # W
  #===

  set wildchar=<Tab>

  set wildmenu

  set wildmode=full

  set wildoptions=fuzzy,pum,tagfile

  set nowrap

  set wrapscan

  set writebackup

  #========
  # Others
  #========

  # Enable syntax highlighting
  syntax enable
enddef
