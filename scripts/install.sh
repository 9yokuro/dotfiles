#!/usr/bin/env bash

curl -fsSL https://deno.land/install.sh | sh
SCRIPTS_DIR="$(git rev-parse --show-toplevel)/scripts" || exit 1
source "${SCRIPTS_DIR}/install_vim.sh"
source "${SCRIPTS_DIR}/install_emacs.sh"
source "${SCRIPTS_DIR}/install_dotfiles.sh"
