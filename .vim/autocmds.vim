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

  #========
  # Window
  #========

  augroup window
    autocmd!

    autocmd WinClosed * wincmd p
  augroup END
enddef
