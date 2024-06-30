#!/usr/bin/env bash

function install_vim() {
  (
    CODE_DIR="${HOME}/code"
    mkdir --parents --verbose "${CODE_DIR}"
    cd "${CODE_DIR}" || exit
    git clone https://github.com/vim/vim.git
    cd vim || exit
    env CFLAGS="-O2 -pipe -march=native" \
      ./configure \
      --prefix="${XDG_DATA_HOME:-${HOME}/.local/share}/vim"
    make -j"$(nproc)"
    make install
  )
}

install_vim
