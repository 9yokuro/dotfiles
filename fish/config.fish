if [ -z "$WAYLAND_DISPLAY" ] && [ "$XDG_VTNR" = 1 ]
  dbus-run-session sway
end
