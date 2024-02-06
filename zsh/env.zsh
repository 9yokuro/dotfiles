# Path
typeset -U path PATH
path=(~/.cargo/bin/ ~/go/bin $path)
export PATH

export VENV_EXISTS="0"

# Completion path
fpath=(~/.zsh-plugins/zsh-completions/src $fpath)
