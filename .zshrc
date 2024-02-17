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
alias gc="git clone"
alias gs="git status"
alias gb="git branch"
alias gct="git commit"
alias gch="git checkout"
alias ga="git add"
alias gps="git push"
alias gpl="git pull"
alias v="nvim"
alias doas="doas "
alias zs="source ~/.zshrc"
alias c="clear"
alias rm="wrm"
alias ln="lanb"
alias e="exit"
alias grep="grep --color=auto"
alias la="ls -a --color"
alias ls="ls -s -l -h --color -G"
alias less="less -g -i -M -R -S -W -z-4 -x4"

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

autoload -Uz history-beginning-search-menu
zle -N history-beginning-search-menu
bindkey "^r" history-beginning-search-menu
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
zstyle ':vcs_info:*' formats "on %F{green}%c%u%b "
zstyle ':vcs_info:*' actionformats '[%b|%a]'
PROMPT='%K{black}%F{magenta}%n@%m%f %F{cyan}%d%f '\$vcs_info_msg_0_'%f at %F{blue}%*%f ;
%F{blue}~%f %F{green}󰅂%f%k '
precmd(){ vcs_info }
