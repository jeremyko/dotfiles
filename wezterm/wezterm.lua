-- Pull in the wezterm API
local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
-- config.color_scheme = 'AdventureTime'

-- /////////////////////////////////////////////////////////////////////////////

config.font = wezterm.font("D2CodingLigature Nerd Font")

config.initial_cols = 200
config.initial_rows = 50

-- /////////////////////////////////////////////////////////////////////////////

--config.front_end = "OpenGL"
--config.animation_fps = 60
--config.enable_tab_bar = false

--local bar = wezterm.plugin.require("https://github.com/adriankarlen/bar.wezterm")
--bar.apply_to_config(config)

config.default_cursor_style = 'SteadyBar'

config.enable_scroll_bar = true

-- /////////////////////////////////////////////////////////////////////////////
config.unix_domains = {
  {
    name = 'unix',
  },
}

-- This causes `wezterm` to act as though it was started as
-- `wezterm connect unix` by default, connecting to the unix
-- domain on startup.
-- If you prefer to connect manually, leave out this line.

-- config.default_gui_startup_args = { 'connect', 'unix' }

-- ///////////////////////////////////////////////////////////////////////////// mouse right paste
local act = wezterm.action
config.mouse_bindings = {
	{
		event = { Down = { streak = 1, button = "Right" } },
		mods = "NONE",
		action = wezterm.action_callback(function(window, pane)
			local has_selection = window:get_selection_text_for_pane(pane) ~= ""
			if has_selection then
				window:perform_action(act.CopyTo("ClipboardAndPrimarySelection"), pane)
				window:perform_action(act.ClearSelection, pane)
			else
				window:perform_action(act({ PasteFrom = "Clipboard" }), pane)
			end
		end),
	},
}

-- ///////////////////////////////////////////////////////////////////////////// scroll up, down --> shift + pgup, down
config.keys = {
  { key = 'PageUp', mods = 'SHIFT', action = act.ScrollByPage(-1) },
  { key = 'PageDown', mods = 'SHIFT', action = act.ScrollByPage(1) },
}


-- /////////////////////////////////////////////////////////////////////////////
-- and finally, return the configuration to wezterm
return config
