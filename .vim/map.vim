vim9script

# Key mapping

inoremap ( ()<C-G>U<Left>
inoremap <expr> ) getline(".")[col(".") - 1] == ")" ? "\<Right>" : ")"

nnoremap x "_x
nnoremap Y y$
nnoremap <C-L> <Cmd>nohlsearch<Bar>diffupdate<Bar>normal! <C-L><CR>
nnoremap ]b <Cmd>bnext<CR>
nnoremap [b <Cmd>bprevious<CR>
nnoremap ]B <Cmd>blast<CR>
nnoremap [B <Cmd>bfirst<CR>
nnoremap ]q <Cmd>cnext<CR>
nnoremap [q <Cmd>cprevious<CR>
nnoremap ]Q <Cmd>clast<CR>
nnoremap [Q <Cmd>cfirst<CR>

def InIndent(): bool
  return col(".") <= indent(".")
enddef

def NotFitIndent(): bool
  return !!((col(".") - 1) % shiftwidth())
enddef

def QuantizedH(count: number = 1): void
  if count > 1 || !&expandtab
    execute printf("normal! %sh", count)
    return
  endif

  normal! h

  while InIndent() && NotFitIndent()
    normal! h
  endwhile
enddef

def QuantizedL(count: number = 1): void
  if count > 1 || !&expandtab
    execute printf("normal! %sl", count)
    return
  endif

  normal! l
  const lastcol: number = col("$") - 1

  while InIndent() && NotFitIndent() && col(".") != lastcol
    normal! l
  endwhile
enddef

nnoremap h <ScriptCmd>QuantizedH(v:count1)<CR>
nnoremap l <ScriptCmd>QuantizedL(v:count1)<CR>

def PageDown(count: number = 1): void
  if count > 1
    execute printf("normal! %sL", count)
    return
  endif

  const line: number = line(".")
  const topline: number = winsaveview().topline
  normal! L

  if line == line(".")
    normal! ztL
  endif

  if line(".") == line("$")
    normal! z-

    if winsaveview().topline != topline
      execute ":" .. line
    endif
  endif

  normal! 0
enddef

def PageUp(count: number = 1): void
  if count > 1
    execute printf("normal! %sH", count)
    return
  endif

  const line: number = line(".")
  const topline: number = winsaveview().topline
  normal! H

  if line == line(".")
    normal! zbH
  endif

  const newtopline: number = winsaveview().topline

  if newtopline == 1 && topline != newtopline
    execute ":" .. line
  endif

  normal! 0
enddef

nnoremap L <ScriptCmd>PageDown(v:count1)<CR>
nnoremap H <ScriptCmd>PageUp(v:count1)<CR>

# Abbreviations

cnoreabbrev <expr> gr getcmdtype() .. getcmdline() ==# ":gr"
      \	? [getchar(), ""][1] .. "grep  %<Left><Left>" : "gr"

# User-defined commands

command W update
command -nargs=1 ChangeIndent setlocal softtabstop=<args> shiftwidth=<args>

command ToggleStatusLine {
  if &laststatus == 2
    set laststatus=0
  else
    set laststatus=2
  endif
}
