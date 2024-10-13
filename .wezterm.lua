-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
config.keys = {
        {
                key = "c",
                mods = "CTRL",
                action = wezterm.action.CopyTo("ClipboardAndPrimarySelection"),
        },
        {
                key = "v",
                mods = "CTRL",
                action = wezterm.action.PasteFrom("Clipboard"),
        },
        { key = "v", mods = "CTRL", action = wezterm.action.PasteFrom("PrimarySelection") },
        { key = "n", mods = "SHIFT|CTRL", action = wezterm.action.ToggleFullScreen },
}
-- For example, changing the colorscheme:
config.color_scheme = "Tokyo Night Moon"
config.audible_bell = "Disabled"
-- and finally, return the configuration to Wezterm
return config
