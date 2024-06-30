export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_DATA_HOME="${HOME}/.local/share"
export XDG_STATE_HOME="${HOME}/.local/state"

export CARGO_HOME="${XDG_DATA_HOME}/cargo"

export DENO_INSTALL="${XDG_DATA_HOME}/deno"

export EDITOR="vim"

export GTK_IM_MODULE="ibus"
export QT_IM_MODULE="ibus"
export XMODIFIERS="@im=ibus"

export LESS=" \
  --quit-if-one-screen \
  --no-init \
  --LONG-PROMPT \
  --RAW-CONTROL-CHARS \
  --HILITE-UNREAD \
  --tabs=2"

CARGO_BIN="${CARGO_HOME}/bin"

if [[ -d "${CARGO_BIN}" ]]; then
  PATH="${PATH}:${CARGO_BIN}"
fi

DENO_BIN="${DENO_INSTALL}/bin"

if [[ -d "${DENO_BIN}" ]]; then
  PATH="${PATH}:${DENO_BIN}"
fi

EMACS_BIN="${XDG_DATA_HOME}/emacs/bin"

if [[ -d "${EMACS_BIN}" ]]; then
  PATH="${PATH}:${EMACS_BIN}"
fi

GO_BIN="${HOME}/go/bin"

if [[ -d "${GO_BIN}" ]]; then
  PATH="${PATH}:${GO_BIN}"
fi

VIM_BIN="${XDG_DATA_HOME}/vim/bin"

if [[ -d "${VIM_BIN}" ]]; then
  PATH="${PATH}:${VIM_BIN}"
fi

export PATH

if [[ -f ~/.bashrc ]]; then
  source ~/.bashrc
fi

if [[ -z "${WAYLAND_DISPLAY}" && "${XDG_VTNR}" -eq 1 ]]; then
  dbus-run-session sway
fi
