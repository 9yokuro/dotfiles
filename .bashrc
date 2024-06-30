if [[ $- != *i* ]]; then
  return
fi

function indicate_information() {
  exit_status=$?

  if git_branch="$(git branch --show-current 2> /dev/null)"; then
    echo -n "$(tput setaf 5)${git_branch}$(tput sgr0) "
  fi

  if [[ "${exit_status}" -ne 0 ]]; then
    echo -n "$(tput setaf 1)[${exit_status}]$(tput sgr0)"
  fi
}

GREEN="\[$(tput setaf 2)\]"
CYAN="\[$(tput setaf 6)\]"
RESET="\[$(tput sgr0)\]"

PS1="${CYAN}\w${RESET} \$(indicate_information)\n${GREEN}>${RESET} "

HISTCONTROL="erasedups:ignoreboth"

alias ".."="cd .."
alias c="clear"
alias cp="cp --reflink=auto --verbose"
alias e="exit"
alias g="git"
alias grep="grep --color=auto"
alias la="ls --almost-all --color=auto --classify=auto"
alias ll="ls --color=auto --classify=auto -l --no-group --size --si"
alias ln="ln --verbose"
alias ls="ls --color=auto --classify=auto"
alias mkdir="mkdir --verbose"
alias mv="mv --verbose"
alias rlsbcl="rlwrap sbcl"
alias rm="rm --verbose"
alias v="vim"
