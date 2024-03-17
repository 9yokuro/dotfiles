vim9script

# Autocmds
export def Indentation()
  augroup indentation
    autocmd!

    autocmd FileType python,rust,go set shiftwidth=4 softtabstop=4 tabstop=4
  augroup END
enddef

export def QuickFix()
  augroup quickfix
    autocmd!

    autocmd QuickFixCmdPost *grep*,*make* silent cwindow
  augroup END
enddef

export def All()
  Indentation()

  QuickFix()
enddef
