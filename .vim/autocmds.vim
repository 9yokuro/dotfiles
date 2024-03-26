vim9script

#==========
# Autocmds
#==========

export def Setup()
  #==========
  # QuickFix
  #==========

  augroup quickfix
    autocmd!

    autocmd QuickFixCmdPost *grep*,*make* silent cwindow
  augroup END

  #==========
  # Terminal
  #==========

  augroup terminal
    autocmd!

    autocmd TerminalOpen,TerminalWinOpen * setlocal bufhidden=wipe
  augroup END

  #========
  # Window
  #========

  augroup window
    autocmd!

    autocmd WinClosed * wincmd p

    autocmd VimResized * wincmd =
  augroup END
enddef
