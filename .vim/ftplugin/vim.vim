vim9script

inoreabbrev def def<CR>enddef<Up>
inoreabbrev function function<CR>endfunction<Up>
inoreabbrev while while<CR>endwhile<Up>
inoreabbrev if if<CR>endif<Up>
inoreabbrev <expr> <lt>Cmd>
      \ [getchar(), ""][1] .. "<lt>Cmd><lt>CR><Left><Left><Left><Left>"
inoreabbrev <expr> <lt>cmd>
      \ [getchar(), ""][1] .. "<lt>Cmd><lt>CR><Left><Left><Left><Left>"
inoreabbrev <expr> <lt>ScriptCmd>
      \ [getchar(), ""][1] .. "<lt>ScriptCmd><lt>CR><Left><Left><Left><Left>"
inoreabbrev <expr> <lt>scriptcmd>
      \ [getchar(), ""][1] .. "<lt>ScriptCmd><lt>CR><Left><Left><Left><Left>"
