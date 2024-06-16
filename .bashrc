if [[ $- != *i* ]]; then
  return
fi

function indicate_information() {
  exit_status=$?

  if git_branch=$(git branch --show-current 2> /dev/null); then
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

alias c="clear"
alias cp="cp --reflink=auto --verbose"
alias e="exit"
alias g="git"
alias ga="git add"
alias gb="git branch"
alias gc="git commit"
alias gC="git clone"
alias gd="git diff"
alias gdw="git diff --word-diff"
alias gg="git grep"
alias gl="git log"
alias gla="git log --oneline --graph --all"
alias gm="git mv"
alias gp="git push"
alias gP="git pull"
alias gr="git reflog"
alias gs="git status"
alias gS="git switch"
alias gt="git tag"
alias grep="grep --color=auto"
alias la="ls --almost-all --color=auto --classify=auto"
alias ll="ls --color=auto --classify=auto -l --no-group --size --si"
alias ln="ln --verbose"
alias ls="ls --color=auto --classify=auto"
alias mkdir="mkdir --verbose"
alias mv="mv --verbose"
alias rlgosh="rlwrap gosh -r7"
alias rlsbcl="rlwrap sbcl"
alias rm="rm --verbose"
alias sync_status="watch grep -e Dirty: -e Writeback: /proc/meminfo"
alias tree1="tree -L 1"
alias v="vim"

function gentoo_upgrade() {
  if type doas > /dev/null; then
    doas emerge-webrsync
    doas emerge --ask --verbose --update --deep --newuse @world
  else
    sudo emerge-webrsync
    sudo emerge --ask --verbose --update --deep --newuse @world
  fi
}

function gentoo_clean() {
  if type doas > /dev/null; then
    doas emerge --ask --depclean --deep
    doas eclean-dist --deep
  else
    sudo emerge --ask --depclean --deep
    sudo eclean-dist --deep
  fi
}

function vim_install() {
  git clone https://github.com/vim/vim.git
  cd vim/ || exit
  env CFLAGS="-O2 -pipe -march=native" make -j12

  if type doas > /dev/null; then
    doas make install
  else
    sudo make install
  fi
}

function vim_upgrade() {
  if [[ $(git pull) = "Already up to date." ]]; then
    return 0
  fi

  if type doas > /dev/null; then
    doas make install
  else
    sudo make install
  fi
}
