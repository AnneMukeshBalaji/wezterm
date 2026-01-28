local wezterm = require("wezterm")

return {
	window_decorations = "RESIZE",
	enable_tab_bar = false,
	color_scheme = "Tokyo Night",
	font = wezterm.font_with_fallback({
		"JetBrainsMono Nerd Font",
	}),
	font_size = 11.0,
	window_background_opacity = 0.7,
	keys = {
		{
			key = "c",
			mods = "CTRL",
			action = wezterm.action.CopyTo("Clipboard"),
		},
		{
			key = "v",
			mods = "CTRL",
			action = wezterm.action.PasteFrom("Clipboard"),
		},
	},
	-- NOTE: Initial window size in columns and rows
	initial_cols = 130,
	initial_rows = 30,
	default_prog = { "pwsh", "-NoLogo" },
}
