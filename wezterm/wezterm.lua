local wezterm = require("wezterm")

local config = {}

-- Color scheme
config.color_schemes = {
  ["alcedo"] = {
    foreground = "#eedcd2",
    background = "#000810",
    cursor_bg = "#eedcd2",
    cursor_border = "#eedcd2",
    cursor_fg = "#000810",
    selection_bg = "#000810",
    selection_fg = "#eedcd2",
    split = "#007ce9",
    compose_cursor = "#eea47f",
    scrollbar_thumb = "#000810",

    ansi = {
      "#000810",
      "#ee7f92",
      "#009c97",
      "#eea47f",
      "#007ce9",
      "#dc7fee",
      "#7fc9ee",
      "#eedcd2",
    },

    brights = {
      "#000810",
      "#ee7f92",
      "#009c97",
      "#eea47f",
      "#007ce9",
      "#dc7fee",
      "#7fc9ee",
      "#eedcd2",
    },
  }
}

config.color_scheme = "alcedo"

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

-- Key bindings
config.disable_default_key_bindings = true

return config
