#!/usr/bin/env bash

function install_vim() {
  (
    cd || exit
    ghq get vim/vim
    cd "$(ghq root)/github.com/vim/vim" || exit
    env CFLAGS="-O2 -pipe -march=native" ./configure --prefix="${XDG_DATA_HOME:-${HOME}/.local/share}/vim"
    make -j"$(nproc)"
    local SU
    make install
  )
}

install_vim
