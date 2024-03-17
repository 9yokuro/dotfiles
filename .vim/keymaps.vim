vim9script

# Keymaps
export def Buffer()
  nnoremap [b <Cmd>bprevious<CR>

  nnoremap ]b <Cmd>bnext<CR>
enddef

export def Miscellaneous()
  g:mapleader = ";"

  nnoremap <Space>w <Cmd>update<CR>

  nnoremap <Space>q <Cmd>quit<CR>
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

  nnoremap <Space>sc <Cmd>wincmd c<CR>

  nnoremap <Space>sh <Cmd>wincmd h<CR>

  nnoremap <Space>sj <Cmd>wincmd j<CR>

  nnoremap <Space>sk <Cmd>wincmd k<CR>

  nnoremap <Space>sl <Cmd>wincmd l<CR>

  nnoremap <Space>sH <Cmd>wincmd H<CR>

  nnoremap <Space>sJ <Cmd>wincmd J<CR>

  nnoremap <Space>sK <Cmd>wincmd K<CR>

  nnoremap <Space>sL <Cmd>wincmd L<CR>
enddef

export def All()
  Buffer()

  Miscellaneous()

  Quickfix()

  Terminal()

  Vimgrep()

  Window()
enddef
