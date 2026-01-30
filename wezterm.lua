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
	colors = {
		foreground = "#CBE0F0",
		background = "#011423",
		cursor_bg = "#47FF9C",
		cursor_fg = "#011423",
		selection_bg = "#033259",
		selection_fg = "#CBE0F0",
	},
	keys = {
		{
			key = "t",
			mods = "ALT",
			action = wezterm.action.SpawnTab("CurrentPaneDomain"),
		},
		-- Close current tab
		{
			key = "q",
			mods = "ALT",
			action = wezterm.action.CloseCurrentTab({ confirm = true }),
		},

		-- Navigate tabs (vim-style)
		{
			key = "h",
			mods = "ALT",
			action = wezterm.action.ActivateTabRelative(-1),
		},
		{
			key = "j",
			mods = "ALT",
			action = wezterm.action.ActivateTabRelative(-1),
		},
		{
			key = "l",
			mods = "ALT",
			action = wezterm.action.ActivateTabRelative(1),
		},
		{
			key = "k",
			mods = "ALT",
			action = wezterm.action.ActivateTabRelative(1),
		},
	},
	-- NOTE: Initial window size in columns and rows
	initial_cols = 130,
	initial_rows = 30,
	default_prog = { "pwsh", "-NoLogo" },
}
