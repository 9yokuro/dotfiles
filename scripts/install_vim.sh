#!/usr/bin/env bash

function install_vim() {
  (
    cd || exit
    git clone https://github.com/vim/vim.git
    cd vim/ || exit
    env CFLAGS="-O2 -pipe -march=native" make -j"$(nproc)"
    local SU

    if type doas > /dev/null; then
      SU="doas"
    else
      SU="sudo"
    fi

    "${SU}" make install
  )
}

install_vim
