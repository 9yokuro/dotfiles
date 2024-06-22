#!/usr/bin/env bash

function install_skk_jisyo() {
  (
    SKK_DIR="${HOME}/.skk"
    cd || exit
    mkdir --parents --verbose "${SKK_DIR}"
    cd "${SKK_DIR}" || exit
    JISYO="SKK-JISYO.L.gz"
    MD5="${JISYO}.md5"
    wget https://skk-dev.github.io/dict/{"${JISYO}","${MD5}"}
    md5sum --check "${MD5}" || exit
    rm --verbose "${MD5}"
    gunzip "${JISYO}"
  )
}

install_skk_jisyo
