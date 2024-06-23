vim9script

inoreabbrev use use;<Left>
inoreabbrev fn fn{<CR>}<Up><End><Left>
inoreabbrev enum enum{<CR>}<Up><End><Left>
inoreabbrev struct struct{<CR>}<Up><End><Left>
inoreabbrev trait trait{<CR>}<Up><End><Left>

inoreabbrev <expr> impl
      \ split(getline("."))[0] ==# "impl" ? "impl{<CR>}<Up><End><Left>" : "impl"

inoreabbrev <expr> for
      \ split(getline("."))[0] ==# "impl" ? "for" : "for{<CR>}<Up><End><Left>"

inoreabbrev while while{<CR>}<Up><End><Left>
inoreabbrev loop loop{<CR>}<Up><End><Left>

inoreabbrev <expr> if
      \ split(getline("."))[0] ==# "if" ? "if{<CR>}<Up><End><Left>" : "if"

inoreabbrev else else{<CR>}<Up><End><Left>
inoreabbrev match match{<CR>}<Up><End><Left>
