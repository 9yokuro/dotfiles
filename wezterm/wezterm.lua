local wezterm = require("wezterm")
local config = {}

-- General
config.use_ime = true

-- Colors and Appearance
config.font = wezterm.font("IosevkaNerdFontMono")
config.window_background_opacity = 0.5
config.enable_tab_bar = false
config.colors = {
	foreground = "#eedcd2",
	background = "#000810",
	cursor_bg = "#eedcd2",
	cursor_border = "#eedcd2",
	cursor_fg = "#000810",
	selection_bg = "#001629",
	selection_fg = "#eedcd2",
	split = "#007ce9",
	compose_cursor = "#ee9467",
	scrollbar_thumb = "#000f1d",

	ansi = {
		"#000203",
		"#ee7f92",
		"#009c97",
		"#eea47f",
		"#007ce9",
		"#dc7fee",
		"#7fc9ee",
		"#eee3de",
	},
	brights = {
		"#001d36",
		"#ee7f92",
		"#009c97",
		"#eea47f",
		"#007ce9",
		"#dc7fee",
		"#7fc9ee",
		"#eedcd2",
	},
}

-- Key Binding
config.disable_default_key_bindings = true
config.keys = {
	{
		key = "t",
		mods = "OPT",
		action = wezterm.action.SpawnTab("CurrentPaneDomain"),
	},
	{
		key = "n",
		mods = "OPT",
		action = wezterm.action.SpawnWindow,
	},
	{
		key = "C",
		mods = "CTRL|SHIFT",
		action = wezterm.action.CopyTo("ClipboardAndPrimarySelection"),
	},
	{
		key = "V",
		mods = "CTRL|SHIFT",
		action = wezterm.action.PasteFrom("Clipboard"),
	},
	{
		key = "\\",
		mods = "CTRL",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "-",
		mods = "CTRL",
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
		mods = "CTRL|SHIFT",
		action = wezterm.action.AdjustPaneSize({ "Left", 1 }),
	},
	{
		key = "J",
		mods = "CTRL|SHIFT",
		action = wezterm.action.AdjustPaneSize({ "Down", 1 }),
	},
	{
		key = "K",
		mods = "CTRL|SHIFT",
		action = wezterm.action.AdjustPaneSize({ "Up", 1 }),
	},
	{
		key = "L",
		mods = "CTRL|SHIFT",
		action = wezterm.action.AdjustPaneSize({ "Right", 1 }),
	},
	{
		key = "{",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivateCopyMode,
	},
}
for i = 1, 8 do
	table.insert(config.keys, {
		key = tostring(i),
		mods = "CTRL",
		action = wezterm.action.ActivateTab(i - 1),
	})
end

return config
