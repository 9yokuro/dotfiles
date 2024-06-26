#!/usr/bin/env bash

DOTFILES_ROOT="$(git rev-parse --show-toplevel)" || exit 1
XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-${HOME}/.config}"

for path in "aqua" \
  "foot" \
  "mako" \
  "sway" \
  "waybar"
do
  ln --symbolic --verbose "${DOTFILES_ROOT}/${path}" "${XDG_CONFIG_HOME}/${path}"
done

for path in ".bash_profile" \
  ".bashrc" \
  ".gitconfig" \
  ".inputrc" \
  ".vim" \
  "wallpapers"
do
  ln --symbolic --verbose "${DOTFILES_ROOT}/${path}" "${HOME}/${path}"
done

ICONS_DIR="${HOME}/.icons/default"
mkdir --parents --verbose "${ICONS_DIR}"

cat << EOF > "${ICONS_DIR}/index.theme"
[icon theme]
Inherits=Adwaita
EOF
