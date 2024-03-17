# dotfiles

![screenshot](./images/terminal.png)

## General
### Requirements
- A Unix-like operating system
- [Nerd Font](https://www.nerdfonts.com) (Recommend Monaspice Nerd Font)
- [Git](https://git-scm.com)

### Optional
- [Nix](https://nixos.org)
- [home-manager](https://github.com/nix-community/home-manager)

## Alacritty
### Requirements
- **Alacritty Version 0.13.0** or later
- Nerd Font
- [tmux](https://github.com/tmux/tmux)
- [zsh](https://www.zsh.org)

## Sway
### Requirements
- Nerd Font
- [fuzzel](https://codeberg.org/dnkl/fuzzel)
- [grim](https://git.sr.ht/~emersion/grim)
- [mako](https://github.com/emersion/mako)
- [source sans](https://github.com/adobe-fonts/source-sans)
- [swaybg](https://github.com/swaywm/swaybg)
- [Waybar](https://github.com/Alexays/Waybar)

## Vim
### Requirements
- **v9.0.0000** or later

### Startup time
```console
$ vim-startuptime | grep Total

Total Average: 7.496500 msec
Total Max:     7.779000 msec
Total Min:     7.182000 msec
```

## Zsh
### Requirements
- [fzf](https://github.com/junegunn/fzf)
- [sheldon](https://github.com/rossmacarthur/sheldon)

### Startup time
```console
$ time zsh -i -c exit

zsh -i -c exit  0.02s user 0.00s system 98% cpu 0.027 total
```

### Plugins
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [zsh-completions](https://github.com/zsh-users/zsh-completions)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

## Installation
Use [sdmw](https://github.com/p1486/sdmw):
```console
git clone https://github.com/p1486/dotfiles
cd dotfiles
sdmw install
```

Or use `scripts/setup.py`:
```console
git clone https://github.com/p1486/dotfiles
cd dotfiles
python scripts/setup.py install
```
