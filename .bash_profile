export DENO_INSTALL="${HOME}/.deno"
export PATH="${HOME}/.cargo/bin:${HOME}/go/bin:${DENO_INSTALL}/bin:${PATH}"

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

export EDITOR="vim"

export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_DATA_HOME="${HOME}/.local/share"
export XDG_STATE_HOME="${HOME}/.local/state"

export DOTFILES="${HOME}/dotfiles"

if [[ -f ~/.bashrc ]]; then
  . ~/.bashrc
fi

if [[ -z "${WAYLAND_DISPLAY}" && "${XDG_VTNR}" -eq 1 ]]; then
  dbus-run-session sway
fi
