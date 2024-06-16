vim9script

const dpp_base: string = expand("~/.cache/dpp")

def InitializeDpp(plugin: string): void
  const path: string = dpp_base .. "/repos/github.com/" .. plugin

  if !isdirectory(path)
    execute "!git clone --depth 1 https://github.com/" .. plugin path
  endif

  execute "set runtimepath^=" .. path
enddef

InitializeDpp("Shougo/dpp.vim")
InitializeDpp("Shougo/dpp-ext-lazy")

if dpp#min#load_state(dpp_base)
  for plugin in [
      "Shougo/dpp-ext-installer",
      "Shougo/dpp-ext-toml",
      "Shougo/dpp-protocol-git",
      "vim-denops/denops.vim",
  ]
    InitializeDpp(plugin)
  endfor

  autocmd my_vimrc_autocmd User DenopsReady dpp#make_state(dpp_base, expand("~/.vim/dpp.ts"))
endif

filetype indent plugin on
