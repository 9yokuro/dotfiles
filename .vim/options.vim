vim9script

#=========
# Options
#=========

export def Setup()
  #============
  # Appearance
  #============

  # Load color scheme.
  colorscheme alcedo

  # Enable syntax highlighting.
  syntax enable

  # Use colors that look good on a dark background.
  set background=dark

  # Make status lines and vertical separators neat.
  set fillchars^=stl:─,stlnc:─,vert:│,eob:\\x20

  # Never show status line.
  set laststatus=0

  set list

  set listchars=tab:─,trail:─,extends:,precedes:,eol:,nbsp:%

  # Never show the line and column number of the cursor position.
  set noruler

  # Never show (partial) command in the last line of the screen.
  set noshowcmd

  # Never show the current mode on the last line.
  set noshowmode

  # Never set the title of the window.
  set notitle

  # Never wrap the lines.
  set nowrap

  # Print the line number in front of each line.
  set number

  # Show the line number relative to the line with the cursor in front of each
  # line.
  set relativenumber

  # Never show tab line.
  set showtabline=0

  set signcolumn=number

  # Set status line to "─".
  set statusline=─

  # Uses highlight-guifg and highlight-guibg attributes in the terminal (thus
  # using 24-bit color).
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

  # Set the character encoding.
  set encoding=utf-8

  # Set the character encoding for the file of this buffer.
  set fileencoding=utf-8

  #=============
  # Indentation
  #=============

  filetype indent on

  # Copy indent from current line when starting a new line.
  set autoindent

  # Copy the structure of the existing lines indent when autoindenting a new
  # line.
  set copyindent

  # Use the appropriate number of spaces to insert a <Tab>.
  set expandtab

  # Number of spaces to use for each step of (auto)indent.
  set shiftwidth=2

  # Do smart autoindenting when starting a new line.
  set smartindent

  # A <Tab> in front of a line inserts blanks according to 'shiftwidth'.
  set smarttab

  # Number of spaces that a <Tab> counts for while performing editing
  # operations, like inserting a <Tab> or using <BS>.
  set softtabstop=2

  # Number of spaces that a <Tab> in the file counts for.
  set tabstop=2

  #===============
  # Miscellaneous
  #===============

  # Enable file type detection.
  filetype on

  filetype plugin on

  # When a file has been detected to have been changed outside of Vim and it
  # has not been changed inside of Vim, automatically read it again.
  set autoread

  # Allow backspacing over autoindent, line breaks (join lines), and the start
  # of insert.
  set backspace=indent,eol,start

  # The bell will not be rung.
  set belloff=all

  set clipboard^=unnamed,unnamedplus

  set confirm

  # A buffer is hidden when it is abandoned.
  set hidden

  # The screen will not be redrawn while executing macros, registers and other
  # commands that have not been typed.
  set lazyredraw

  # Enable the mouse in all modes.
  set mouse=a

  # The library function fsync() will not be called after writing a file.
  set nofsync

  # Never create a swapfile.
  set noswapfile

  set path^=.**,/usr/include**

  # Use zsh for ! and :! commands.
  set shell=fish

  # Spell checking will be done.
  set spell

  # Splitting a window will put the new window below the current one.
  set splitbelow

  # Splitting a window will put the new window right of the current one.
  set splitright

  set tags=tags;,./tags;

  set wildchar=<Tab>

  # Use an enhanced command-line completion.
  set wildmenu

  set wildmode=full,longest

  set wildoptions=fuzzy,pum,tagfile

  #========
  # Search
  #========

  # Highlight search results.
  set hlsearch

  # Ignore the case of normal letters.
  set ignorecase

  # Search incrementally.
  set incsearch

  # Override the 'ignorecase' option if the search pattern contains upper case
  # characters.
  set smartcase

  # Searches wrap around the end of the file.
  set wrapscan

  #==========
  # Terminal
  #==========

  # More characters will be sent to the screen for redrawing, instead of using
  # insert/delete line commands.
  set ttyfast
enddef
