vim9script

augroup my_vimrc_autocmd
  autocmd!
  autocmd WinClosed * wincmd p
  autocmd VimResized * wincmd =
  autocmd QuickFixCmdPost *grep* copen
  autocmd FileType qf setlocal norelativenumber
augroup END
