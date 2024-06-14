if [[ $- != *i* ]]; then
  return
fi

BLUE="\[$(tput setaf 4)\]"
CYAN="\[$(tput setaf 6)\]"
RESET="\[$(tput sgr0)\]"

PS1="(${CYAN}\w${RESET})${BLUE}>${RESET} "

HISTCONTROL="erasedups:ignoreboth"

alias c="clear";
alias cp="cp --reflink=auto --verbose";
alias e="exit";
alias g="git";
alias ga="git add";
alias gb="git branch";
alias gc="git commit";
alias gC="git clone";
alias gd="git diff";
alias gg="git grep";
alias gl="git log";
alias gm="git mv";
alias gp="git push";
alias gP="git pull";
alias gr="git reflog";
alias gs="git status";
alias gS="git switch";
alias gt="git tag";
alias grep="grep --color=auto";
alias la="ls --almost-all --color=auto --classify=auto";
alias ll="ls --color=auto --classify=auto -l --no-group --size --si";
alias ln="ln --verbose";
alias ls="ls --color=auto --classify=auto";
alias mkdir="mkdir --verbose";
alias mv="mv --verbose";
alias rlgosh="rlwrap gosh -r7";
alias rlsbcl="rlwrap sbcl";
alias rm="rm --verbose";
alias sync_status="watch grep -e Dirty: -e Writeback: /proc/meminfo";
alias tree1="tree -L 1";
alias v="vim";

function gentoo_upgrade() {
  if type doas > /dev/null; then
    doas emerge-webrsync
    doas emerge --ask --verbose --update --deep --newuse @world
  else
    sudo emerge-webrsync
    sudo emerge --ask --verbose --update --deep --newuse @world
  fi
}
