vim9script

#===============
# Abbreviations
#===============

export def Setup()
  cnoreabbrev <expr> w] (getcmdtype() ==# ":" && getcmdline() ==# "w]") ? "w" : "w]"

  cnoreabbrev <expr> s getcmdtype() .. getcmdline() ==# ":s" ? [getchar(), ""][1] .. "%s///g<Left><Left>" : "s"

  cnoreabbrev <expr> g getcmdtype() .. getcmdline() ==# ":g" ? [getchar(), ""][1] .. ":silent grep  %<Left><Left>" : "g"

  cnoreabbrev <expr> vg getcmdtype() .. getcmdline() ==# ":vg" ? [getchar(), ""][1] .. ":silent vimgrep  %<Left><Left>" : "vg"

  inoreabbrev misc miscellaneous

  inoreabbrev Misc Miscellaneous

  #=================
  # Quotation marks
  #=================

  # input -> output
  # " -> ""
  inoreabbrev <expr> " [getchar(), ""][1] .. "\"\"<Left>"

  # \n" -> """
  # 
  #        """
  inoreabbrev <expr> \n" [getchar(), ""][1] .. "\"\"\"<CR><CR>\"\"\"<Up>"

  # ' -> ''
  inoreabbrev <expr> ' [getchar(), ""][1] .. "''<Left>"

  # \n' -> '''
  #
  #        '''
  inoreabbrev <expr> \n' [getchar(), ""][1] .. "'''<CR><CR>'''<Up>"

  # ` -> ``
  inoreabbrev <expr> ` [getchar(), ""][1] .. "``<Left>"

  # \n` -> ```
  #
  #        ```
  inoreabbrev <expr> \n` [getchar(), ""][1] .. "```<CR><CR>```<Up>"
enddef
