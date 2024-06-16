vim9script

inoremap ( ()<C-G>U<Left>
inoremap <expr> ) getline(".")[col(".") - 1] == ")" ? "\<Right>" : ")"

nnoremap ]b <Cmd>bnext<CR>
nnoremap [b <Cmd>bprevious<CR>
nnoremap ]B <Cmd>blast<CR>
nnoremap [B <Cmd>bfirst<CR>
nnoremap ]q <Cmd>cnext<CR>
nnoremap [q <Cmd>cprevious<CR>
nnoremap ]Q <Cmd>clast<CR>
nnoremap [Q <Cmd>cfirst<CR>
