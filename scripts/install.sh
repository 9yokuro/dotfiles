#!/usr/bin/env bash

curl -fsSL https://deno.land/install.sh | sh
curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
bash -c "sh <(curl -fsSL https://raw.githubusercontent.com/ocaml/opam/master/shell/install.sh)"
curl -sSfL -O https://raw.githubusercontent.com/aquaproj/aqua-installer/v3.0.1/aqua-installer
echo "fb4b3b7d026e5aba1fc478c268e8fbd653e01404c8a8c6284fdba88ae62eda6a  aqua-installer" | sha256sum -c
chmod +x aqua-installer
./aqua-installer
rm aqua-installer
SCRIPTS_DIR="$(git rev-parse --show-toplevel)/scripts" || exit 1
source "${SCRIPTS_DIR}/install_vim.sh"
source "${SCRIPTS_DIR}/install_skk_jisyo.sh"
source "${SCRIPTS_DIR}/install_dotfiles.sh"
