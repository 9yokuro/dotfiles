#!/usr/bin/env bash

function install_emacs() {
  (
    CODE_DIR="${HOME}/code"
    mkdir --parents --verbose "${CODE_DIR}"
    cd "${CODE_DIR}" || exit
    git clone https://git.savannah.org/git/emacs.git
    cd emacs || exit
    env CFLAGS="-O2 -pipe -march=native" CXXFLAGS="-O2 -pipe -march=native" \
      ./configure \
      --prefix="${XDG_DATA_HOME:-${HOME}/.local/share}/emacs" \
      --with-pgtk
    make -j"$(nproc)"
    make install
  )
}

install_emacs
