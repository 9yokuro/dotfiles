vim9script

# Keymaps
export def Buffer()
  nnoremap [b <Cmd>bprevious<CR>

  nnoremap ]b <Cmd>bnext<CR>
enddef

export def Miscellaneous()
  g:mapleader = ";"
enddef

export def Quickfix()
  nnoremap [q <Cmd>cprevious<CR>

  nnoremap ]q <Cmd>cnext<CR>
enddef

export def Terminal()
  nnoremap <Space>tt <Cmd>tab terminal<CR>

  nnoremap <Space>ts <Cmd>bo terminal<CR>

  nnoremap <Space>tv <Cmd>vert terminal<CR>
enddef

export def Vimgrep()
  nnoremap <Space>g :silent vimgrep 
enddef

export def Window()
  nnoremap <Space>ss <Cmd>split<CR>

  nnoremap <Space>sv <Cmd>vsplit<CR>

  nnoremap <Space>wc <Cmd>wincmd c<CR>

  nnoremap <Space>wh <Cmd>wincmd h<CR>

  nnoremap <Space>wj <Cmd>wincmd j<CR>

  nnoremap <Space>wk <Cmd>wincmd k<CR>

  nnoremap <Space>wl <Cmd>wincmd l<CR>

  nnoremap <Space>wH <Cmd>wincmd H<CR>

  nnoremap <Space>wJ <Cmd>wincmd J<CR>

  nnoremap <Space>wK <Cmd>wincmd K<CR>

  nnoremap <Space>wL <Cmd>wincmd L<CR>
enddef

export def All()
  Buffer()

  Miscellaneous()

  Quickfix()

  Terminal()

  Vimgrep()

  Window()
enddef
