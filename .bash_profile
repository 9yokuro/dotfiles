export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_DATA_HOME="${HOME}/.local/share"
export XDG_STATE_HOME="${HOME}/.local/state"

AQUA="${AQUA_ROOT_DIR:-${XDG_DATA_HOME:-$HOME/.local/share}/aquaproj-aqua}/bin/aqua"

if [[ -x "${AQUA}" ]]; then
  PATH="$(${AQUA} root-dir)/bin:${PATH}"
fi

CARGO_BIN="${CARGO_INSTALL_ROOT:-${CARGO_HOME:-${HOME}/.cargo}}/bin"

if [[ -d "${CARGO_BIN}" ]]; then
  PATH="${PATH}:${CARGO_BIN}"
fi

GHCUP_ENV="${GHCUP_INSTALL_BASE_PREFIX:-${HOME}}/.ghcup/env"

if [[ -f "${GHCUP_ENV}" ]]; then
  source "${GHCUP_ENV}"
fi

GO_BIN="${GOPATH:-${HOME}/go}/bin"

if [[ -d "${GO_BIN}" ]]; then
  PATH="${PATH}:${GO_BIN}"
fi

export DENO_INSTALL="${HOME}/.deno"
DENO_BIN="${DENO_INSTALL}/bin"

if [[ -d "${DENO_BIN}" ]]; then
  PATH="${PATH}:${DENO_BIN}"
fi

if type opam > /dev/null; then
  eval "$(opam env)"
fi

export PATH

export AQUA_GLOBAL_CONFIG="${XDG_CONFIG_HOME}/aqua/aqua.yaml"
export AQUA_PROGRESS_BAR="true"

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


if [[ -f ~/.bashrc ]]; then
  source ~/.bashrc
fi

if [[ -z "${WAYLAND_DISPLAY}" && "${XDG_VTNR}" -eq 1 ]]; then
  dbus-run-session sway
fi
