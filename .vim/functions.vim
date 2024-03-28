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

  execute "normal! W\<Left>B"

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

  execute "normal! gE\<Right>E"

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
  if OnTheLastWord() || NumberOfWords() == 1
    return
  endif

  execute "normal! \"zdaW"

  if strchars(expand("<cWORD>")) != 1
    normal! E
  endif

  execute "normal! a\<Space>\<Esc>\"zp\"_x"

  if getpos(".") != EndOfTheLine()
    execute "normal! \<Left>"
  endif
enddef

export def SwapH()
  if OnTheFirstWord() || NumberOfWords() == 1
    return
  endif

  execute "normal! \"zdiWB\"zPa\<Space>\<Esc>E\<Right>\"_xF\<Space>\<Left>"
enddef
