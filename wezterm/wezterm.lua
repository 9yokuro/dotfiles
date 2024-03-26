local wezterm = require("wezterm")

local config = {}

-- Font
config.font = wezterm.font("JetBrainsMonoNerdFontMono")

config.font_size = 13.0

config.line_height = 1.2

-- Window
config.window_background_opacity = 0.5

config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

config.enable_tab_bar = false

config.disable_default_key_bindings = true

return config
