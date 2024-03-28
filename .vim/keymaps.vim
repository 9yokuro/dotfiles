vim9script

import "~/.vim/functions.vim"

#=========
# Keymaps
#=========

export def Setup()
  #========
  # Buffer
  #========

  nnoremap [b <Cmd>bprevious<CR>

  nnoremap [B <Cmd>bfirst<CR>

  nnoremap ]b <Cmd>bnext<CR>

  nnoremap ]B <Cmd>blast<CR>

  #===============
  # Miscellaneous
  #===============

  g:maplocalleader = "\\"

  g:mapleader = "\\"

  noremap h <ScriptCmd>functions.QuantizedH()<CR>

  noremap l <ScriptCmd>functions.QuantizedL()<CR>

  noremap j gj

  noremap k gk

  noremap H <ScriptCmd>functions.PageUp()<CR>

  noremap L <ScriptCmd>functions.PageDown()<CR>

  nnoremap <Space>u <Cmd>update<CR>

  nnoremap <Space>q <Cmd>quit<CR>

  nnoremap <Space>l <Cmd>nohlsearch<CR><Cmd>redraw!<CR>

  nnoremap <C-k> "zdd<Up>"zP

  nnoremap <C-j> "zdd"zp

  nnoremap <C-l> <ScriptCmd>functions.SwapL()<CR>

  nnoremap <C-h> <ScriptCmd>functions.SwapH()<CR>

  vnoremap <C-k> "zx<Up>"zP`[V`]

  vnoremap <C-j> "zx"zp`[V`]

  nnoremap <C-CR> mzo<Esc>`z

  nnoremap <C-S-CR> mzO<Esc>`z

  inoremap <C-[> <Esc><Right>

  nnoremap Y y$

  nnoremap p ]p

  nnoremap P ]P

  nnoremap x "_x

  #=============
  # Parentheses
  #=============

  # input -> output
  # ( -> ()
  inoremap ( ()<Left>

  cnoremap <expr> ( getcmdtype() ==# ":" ? "()<Left>" : "("

  # (<CR> -> (
  #
  #          )
  inoremap (<CR> (<CR><CR>)<Up>

  # { -> {}
  inoremap { {}<Left>

  cnoremap <expr> { getcmdtype() ==# ":" ? "{}<Left>" : "{"

  # {<CR> -> {
  #
  #          }
  inoremap {<CR> {<CR><CR>}<Up>

  # [ -> []
  inoremap [ []<Left>

  cnoremap <expr> [ getcmdtype() ==# ":" ? "[]<Left>" : "["

  # [<CR> -> [
  #
  #          ]
  inoremap [<CR> [<CR><CR>]<Up>

  #==========
  # Quickfix
  #==========

  nnoremap [q <Cmd>cprevious<CR>

  nnoremap [Q <Cmd>cfirst<CR>

  nnoremap ]q <Cmd>cnext<CR>

  nnoremap ]Q <Cmd>clast<CR>

  #=====
  # Tab
  #=====

  nnoremap [t <Cmd>tabprevious<CR>

  nnoremap [T <Cmd>tabfirst<CR>

  nnoremap ]t <Cmd>tabnext<CR>

  nnoremap ]T <Cmd>tablast<CR>

  #==========
  # Terminal
  #==========

  nnoremap <Space>tt <Cmd>tab terminal<CR>

  nnoremap <Space>ts <Cmd>bo terminal<CR>

  nnoremap <Space>tv <Cmd>vert terminal<CR>

  nnoremap <Space>tf <ScriptCmd>functions.PopupTerminal()<CR>

  #======
  # grep
  #======

  nnoremap <Space>g :silent grep  %<Left><Left>

  #========
  # Window
  #========

  nnoremap <Space>ws <Cmd>split<CR>

  nnoremap <Space>wv <Cmd>vsplit<CR>

  nnoremap <Space>wc <Cmd>close<CR>

  nnoremap <Space>wh <Cmd>wincmd h<CR>

  nnoremap <Space>wj <Cmd>wincmd j<CR>

  nnoremap <Space>wk <Cmd>wincmd k<CR>

  nnoremap <Space>wl <Cmd>wincmd l<CR>

  nnoremap <Space>wH <Cmd>wincmd H<CR>

  nnoremap <Space>wJ <Cmd>wincmd J<CR>

  nnoremap <Space>wK <Cmd>wincmd K<CR>

  nnoremap <Space>wL <Cmd>wincmd L<CR>
enddef
