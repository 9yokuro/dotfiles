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

config.enable_tab_bar = false

-- Key bindings
config.disable_default_key_bindings = true

config.keys = {
  {
    key = "[",
    mods = "OPT",
    action = wezterm.action.ActivateCopyMode,
  },

  {
    key = "t",
    mods = "OPT",
    action = wezterm.action.SpawnCommandInNewTab({
      cwd = "~",
    }),
  },

  {
    key = "v",
    mods = "OPT",
    action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
  },

  {
    key = "s",
    mods = "OPT",
    action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
  },

  {
    key = "h",
    mods = "OPT",
    action = wezterm.action.ActivatePaneDirection("Left"),
  },

  {
    key = "j",
    mods = "OPT",
    action = wezterm.action.ActivatePaneDirection("Down"),
  },

  {
    key = "k",
    mods = "OPT",
    action = wezterm.action.ActivatePaneDirection("Up"),
  },

  {
    key = "l",
    mods = "OPT",
    action = wezterm.action.ActivatePaneDirection("Right"),
  },

  {
    key = "H",
    mods = "OPT|SHIFT",
    action = wezterm.action.AdjustPaneSize({ "Left", 1 }),
  },

  {
    key = "J",
    mods = "OPT|SHIFT",
    action = wezterm.action.AdjustPaneSize({ "Down", 1 }),
  },

  {
    key = "K",
    mods = "OPT|SHIFT",
    action = wezterm.action.AdjustPaneSize({ "Up", 1 }),
  },

  {
    key = "L",
    mods = "OPT|SHIFT",
    action = wezterm.action.AdjustPaneSize({ "Right", 1 }),
  },
}

for i = 1, 8 do
  table.insert(config.keys, {
    key = tostring(i),
    mods = "OPT",
    action = wezterm.action.ActivateTab(i - 1),
  })
end

-- Miscellaneous
config.use_ime = true

-- Window
config.window_background_opacity = 0.5

config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

return config
