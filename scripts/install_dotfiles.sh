#!/usr/bin/env bash

DOTFILES_ROOT="$(git rev-parse --show-toplevel)" || exit 1
DOTFILES_DATA="${XDG_DATA_HOME:-${HOME}/.local/share}/dotfiles"
XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-${HOME}/.config}"

for path in "foot/" "sway/"
do
  ln --symbolic --verbose "${DOTFILES_ROOT}/${path}" "${XDG_CONFIG_HOME}"
done

for path in ".bash_profile" \
  ".bashrc" \
  ".gitconfig" \
  ".inputrc" \
  ".vim/"
do
  ln --symbolic --verbose "${DOTFILES_ROOT}/${path}" "${HOME}"
done

ln --symbolic --verbose "${DOTFILES_ROOT}/wallpapers/" "${DOTFILES_DATA}"

ICONS_DIR="${HOME}/.icons/default"
mkdir --parents --verbose "${ICONS_DIR}"

cat << EOF > "${ICONS_DIR}/index.theme"
[icon theme]
Inherits=Adwaita
EOF
