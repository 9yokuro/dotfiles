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
