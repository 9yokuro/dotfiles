# dotfiles

![screenshot](./images/terminal.png)

## Contents
- Alacritty
- Neovim
- Sway
- Tmux
- Waybar
- Zsh
- Vim

## Requirements
> [!NOTE]
> Recommend the latest version if not specified.

### General
- A Unix-like operating system
- [Nerd Font](https://www.nerdfonts.com/) (Recommended: Iosevka Nerd Font)

### Neovim
- [ctags](https://github.com/universal-ctags/ctags)

### Sway
- [bemenu](https://github.com/Cloudef/bemenu)
- [grim](https://git.sr.ht/~emersion/grim)
- [source sans](https://github.com/adobe-fonts/source-sans)
- [swaybg](https://github.com/swaywm/swaybg)

### Vim
- version >= 9.0 (`.vimrc` is written in Vim9 script.)
- ctags

## Installation
Use [sdmw](https://github.com/p1486/sdmw):
```console
git clone https://github.com/p1486/dotfiles
cd dotfiles
sdmw install
```
Or use `scripts/setup.py`
```console
git clone https://github.com/p1486/dotfiles
cd dotfiles
python scripts/setup.py install
```
