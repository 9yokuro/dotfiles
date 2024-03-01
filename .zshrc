# Login
if [ -z "${WAYLAND_DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
    exec sway
fi

# Path
typeset -U path PATH
path=(~/.cargo/bin/ ~/go/bin $path)
export PATH

# Alias
alias g="git"
alias ga="git add"
alias gb="git branch"
alias gc="git commit"
alias gC="git clone"
alias gp="git push"
alias gP="git pull"
alias gs="git status"
alias gS="git switch"
alias gt="git tag"
alias v="nvim"
alias doas="doas "
alias e="exit"
alias eza="eza -l"
alias c="clear"

# Options
setopt autocd
setopt extendedglob
setopt nomatch
setopt notify
setopt share_history
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_expand
setopt correct
setopt noautomenu
setopt extended_history
setopt magic_equal_subst
unsetopt beep
unsetopt correct_all
bindkey -v
HISTFILE=~/.zhist
HISTSIZE=1000000
SAVEHIST=1000000

function fzf-select-history() {
    BUFFER=$(history -n -r 1 | fzf --query "$LBUFFER" --reverse)

    CURSOR=$#BUFFER

    zle reset-prompt
}

zle -N fzf-select-history

bindkey '^r' fzf-select-history
bindkey "^n" history-beginning-search-backward
bindkey "^p" history-beginning-search-forward

# Completion
autoload -Uz compinit && compinit
zstyle ":completion:*" menu select
setopt menu_complete

# Prompt
autoload -Uz promptinit && promptinit

autoload -Uz vcs_info
setopt prompt_subst

zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}! "
zstyle ':vcs_info:git:*' unstagedstr "%F{yellow}󰦒 "
zstyle ':vcs_info:*' formats "%F{green}%c%u%b "
zstyle ':vcs_info:*' actionformats '[%b|%a]'
PROMPT='%K{black}%F{magenta}%n@%m%f %F{cyan}%d%f '\$vcs_info_msg_0_'%f at %F{blue}%*%f ;
%F{blue}~%f %F{green}󰅂%f%k '
precmd(){ vcs_info }

# Nix home-manager
source ~/.nix-profile/etc/profile.d/hm-session-vars.sh

# Plugins
eval "$(sheldon source)"

# Zoxide
eval "$(zoxide init zsh)"
