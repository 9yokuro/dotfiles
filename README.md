# dotfiles

![screenshot](./images/terminal.png)

## General
### Requirements
- A Unix-like operating system
- [Nerd Font](https://www.nerdfonts.com) (Recommend Iosevka Nerd Font)
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

## Neovim
### Requirements
- **Nvim 0.9.2** or later
- Nerd Font
- Git
- A C compiler and libstdc++
- [fd](https://github.com/sharkdp/fd)
- [ripgrep](https://github.com/BurntSushi/ripgrep)

### Plugins
- [afmt.nvim](https://github.com/9yokuro/afmt.nvim)
- [fern.vim](https://github.com/lambdalisue/fern.vim)
- [fern-renderer-nerdfont.vim](https://github.com/lambdalisue/fern-renderer-nerdfont.vim)
- [nerdfont.vim](https://github.com/lambdalisue/nerdfont.vim)
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)
- [plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [plum.nvim](https://github.com/9yokuro/plum.nvim)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [tokyonight.nvim](https://github.com/folke/tokyonight.nvim)

## Sway
### Requirements
- [fuzzel](https://codeberg.org/dnkl/fuzzel)
- [grim](https://git.sr.ht/~emersion/grim)
- [mako](https://github.com/emersion/mako)
- [source sans](https://github.com/adobe-fonts/source-sans)
- [swaybg](https://github.com/swaywm/swaybg)

## Vim
### Requirements
- **v9.0.1276** or later
- Nerd Font
- Git
- [Deno](https://deno.com)

### Plugins
- [ddu.vim](https://github.com/Shougo/ddu.vim)
- [ddu-commands.vim](https://github.com/Shougo/ddu-commands.vim)
- [ddu-filter-matcher_substring](https://github.com/Shougo/ddu-filter-matcher_substring)
- [ddu-kind-file](https://github.com/Shougo/ddu-kind-file)
- [ddu-source-file_rec](https://github.com/Shougo/ddu-source-file_rec)
- [ddu-source-file](https://github.com/Shougo/ddu-source-file)
- [ddu-source-buffer](https://github.com/shun/ddu-source-buffer)
- [ddu-ui-ff](https://github.com/Shougo/ddu-ui-ff)
- [denops.vim](https://github.com/vim-denops/denops.vim)
- [dpp.vim](https://github.com/Shougo/dpp.vim?tab=readme-ov-file)
- [dpp-ext-installer](https://github.com/Shougo/dpp-ext-installer)
- [dpp-ext-lazy](https://github.com/Shougo/dpp-ext-lazy)
- [dpp-ext-toml](https://github.com/Shougo/dpp-ext-toml)
- [dpp-protocol-git](https://github.com/Shougo/dpp-protocol-git)
- fern.vim
- fern-renderer-nerdfont.vim
- nerdfont.vim
- [onedark.vim](https://github.com/joshdick/onedark.vim)

## Zsh
### Requirements
- [fzf](https://github.com/junegunn/fzf)
- [sheldon](https://github.com/rossmacarthur/sheldon)

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
