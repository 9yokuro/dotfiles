# Path
typeset -U path PATH
path=(~/.cargo/bin $path)
export PATH

## Completion path
fpath=(~/.zsh-plugins/zsh-completions/src $fpath)
