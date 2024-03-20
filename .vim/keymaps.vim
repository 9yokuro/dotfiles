vim9script

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

  g:mapleader = ";"

  nnoremap <Space>w <Cmd>write<CR>

  nnoremap <Space>q <Cmd>quit<CR>

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

  # Open a terminal in a new tab.
  nnoremap <Space>tt <Cmd>tab terminal<CR>

  # Split current window horizontally and open a terminal.
  nnoremap <Space>ts <Cmd>bo terminal<CR>

  # Split current window vertically and open a terminal.
  nnoremap <Space>tv <Cmd>vert terminal<CR>

  # Open a terminal in a popup window.
  nnoremap <Space>tf <Cmd>call popup_create(term_start([&shell], #{ hidden: 1, term_finish: 'close'}), #{ border: [], minwidth: winwidth(0) * 6/7, minheight: &lines * 6/7 })<CR>

  #=========
  # Vimgrep
  #=========

  nnoremap <Space>g :silent vimgrep 

  #========
  # Window
  #========

  # Split current window horizontally.
  nnoremap <Space>ws <Cmd>split<CR>

  # Split current window vertically.
  nnoremap <Space>wv <Cmd>vsplit<CR>

  # Close the current window.
  nnoremap <Space>wc <Cmd>close<CR>

  # Move cursor to Nth window left of current one.
  nnoremap <Space>wh <Cmd>wincmd h<CR>

  # Move cursor to Nth window below current one.
  nnoremap <Space>wj <Cmd>wincmd j<CR>

  # Move cursor to Nth window above current one.
  nnoremap <Space>wk <Cmd>wincmd k<CR>

  # Move cursor to Nth window right of current one.
  nnoremap <Space>wl <Cmd>wincmd l<CR>

  # Move the current window to be at the far left.
  nnoremap <Space>wH <Cmd>wincmd H<CR>

  # Move the current window to be at the very bottom.
  nnoremap <Space>wJ <Cmd>wincmd J<CR>

  # Move the current window to be at the very top.
  nnoremap <Space>wK <Cmd>wincmd K<CR>

  # Move the current window to be at the far right.
  nnoremap <Space>wL <Cmd>wincmd L<CR>
enddef
