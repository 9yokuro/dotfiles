vim9script

#===============
# Abbreviations
#===============

export def Setup()
  cnoreabbrev <expr> w] (getcmdtype() ==# ":" && getcmdline() ==# "w]") ? "w" : "w]"

  cnoreabbrev <expr> s getcmdtype() .. getcmdline() ==# ":s" ? [getchar(), ""][1] .. "%s///g<Left><Left>" : "s"

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
