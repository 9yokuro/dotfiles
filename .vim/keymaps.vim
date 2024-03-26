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

  nnoremap ]b <Cmd>bnext<CR>

  #===============
  # Miscellaneous
  #===============

  g:maplocalleader = ","

  g:mapleader = ","

  noremap h <ScriptCmd>functions.QuantizedH()<CR>

  noremap l <ScriptCmd>functions.QuantizedL()<CR>

  noremap H <ScriptCmd>functions.PageUp()<CR>

  noremap L <ScriptCmd>functions.PageDown()<CR>

  nnoremap <Space>s <Cmd>update<CR>

  nnoremap <Space>q <Cmd>quit<CR>

  nnoremap <Space>l <Cmd>nohlsearch<CR><Cmd>redraw<CR>

  #=============
  # Parentheses
  #=============

  # input -> output
  # ( -> ()
  inoremap ( ()<Left>

  # (<CR> -> (
  #
  #          )
  inoremap (<CR> (<CR><CR>)<Up>

  # { -> {}
  inoremap { {}<Left>

  # {<CR> -> {
  #
  #          }
  inoremap {<CR> {<CR><CR>}<Up>

  # [ -> []
  inoremap [ []<Left>

  # [<CR> -> [
  #
  #          ]
  inoremap [<CR> [<CR><CR>]<Up>

  #==========
  # Quickfix
  #==========

  nnoremap [q <Cmd>cprevious<CR>

  nnoremap ]q <Cmd>cnext<CR>

  #=====
  # Tab
  #=====

  nnoremap [t <Cmd>tabprevious<CR>

  nnoremap ]t <Cmd>tabnext<CR>

  #==========
  # Terminal
  #==========

  nnoremap <Space>tt <Cmd>tab terminal<CR>

  nnoremap <Space>ts <Cmd>bo terminal<CR>

  nnoremap <Space>tv <Cmd>vert terminal<CR>

  nnoremap <Space>tf <ScriptCmd>functions.PopupTerminal()<CR>

  #=========
  # Vimgrep
  #=========

  nnoremap <Space>g :silent vimgrep  %<Left><Left>

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
