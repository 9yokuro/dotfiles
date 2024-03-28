vim9script

# Open a terminal in a popup window
export def PopupTerminal()
  const term_start_options = {
    hidden: 1,
    term_finish: "close",
  }

  const popup_create_options = {
    border: [],
    minwidth: winwidth(0) * 6 / 7,
    minheight: &lines * 6 / 7,
  }

  popup_create(term_start(&shell, term_start_options), popup_create_options)
enddef

# Whether the cursor is in an indentation
def InIndent(): bool
  return col(".") <= indent(".")
enddef

def NotFitIndent(): bool
  return !!((col(".") - 1) % shiftwidth())
enddef

export def QuantizedH(cnt: number = 1)
  if cnt > 1 || !&expandtab
    execute printf("normal! %sh", cnt)

    return
  endif

  normal! h

  if NumberOfWords() == 0
    return
  endif

  while InIndent() && NotFitIndent()
    normal! h
  endwhile
enddef

export def QuantizedL(cnt: number = 1)
  if cnt > 1 || !&expandtab
    execute printf("normal! %sl", cnt)

    return
  endif

  normal! l

  if NumberOfWords() == 0
    return
  endif

  while InIndent() && NotFitIndent()
    normal! l
  endwhile
enddef

export def PageDown()
  var line = line(".")

  normal! L

  if line == line(".")
    normal! ztL
  endif

  if line(".") == line("$")
    normal! z-
  endif

  normal! 0
enddef

export def PageUp()
  var line = line(".")

  normal! H

  if line == line(".")
    normal! zbH
  endif

  normal! 0
enddef

def StartOfTheLine(): list<number>
  var pos = getpos(".")

  execute "normal! ^"

  var start_of_the_line = getpos(".")

  setpos(".", pos)

  return start_of_the_line
enddef

def EndOfTheLine(): list<number>
  var pos = getpos(".")

  execute "normal! g_"

  var end_of_the_line = getpos(".")

  setpos(".", pos)

  return end_of_the_line
enddef

def OnTheFirstWord(): bool
  var pos = getpos(".")

  var start_of_the_line = StartOfTheLine()

  if pos == start_of_the_line
    return true
  endif

  setpos(".", pos)

  execute "normal! WhB"

  if getpos(".") == start_of_the_line
    return true
  endif

  setpos(".", pos)

  return false
enddef

def OnTheLastWord(): bool
  var pos = getpos(".")

  var end_of_the_line = EndOfTheLine()

  if pos == end_of_the_line
    return true
  endif

  setpos(".", pos)

  execute "normal! gElE"

  if getpos(".") == end_of_the_line
    return true
  endif

  setpos(".", pos)

  return false
enddef

def NumberOfWords(): number
  return len(split(getline("."), " "))
enddef

export def SwapL()
  if OnTheLastWord() || NumberOfWords() <= 1
    return
  endif

  execute "normal! \"zdaW"

  if strchars(expand("<cWORD>")) != 1
    normal! E
  endif

  execute "normal! a\<Space>\<Esc>\"zp\"_x"

  if getpos(".") != EndOfTheLine()
    execute "normal! h"
  endif
enddef

export def SwapH()
  if OnTheFirstWord() || NumberOfWords() <= 1
    return
  endif

  execute "normal! \"zdiWB\"zPa\<Space>\<Esc>El\"_xF\<Space>h"
enddef

export def ParenthesesNL(open: string, close: string)
  var start_of_the_line = StartOfTheLine()[2]

  execute "normal! i" .. open .. "\<CR>\<Esc>"

  if start_of_the_line == 1
    execute "normal! i\<CR>" .. close .. "\<Esc>k"
  else
    while col(".") != start_of_the_line
      execute "normal! a\<Tab>\<Esc>"
    endwhile

    execute "normal! \"zyy\"zpa" .. close .. "\<Esc>k"
  endif

  execute "normal! a\<Tab>\<Esc>"

  var pos = getpos(".")

  pos[2] += 1

  setpos(".", pos)
enddef
