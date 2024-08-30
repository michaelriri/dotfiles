local wezterm = require 'wezterm'
local config = {}
config.font = wezterm.font 'JetBrains Mono'
config.font_size = 10.0
config.color_scheme = 'Gruvbox dark, hard (base16)'
config.use_fancy_tab_bar = false
config.show_tabs_in_tab_bar = false
config.show_new_tab_button_in_tab_bar = false
config.enable_tab_bar = false
config.window_decorations = 'INTEGRATED_BUTTONS|RESIZE'
config.disable_default_key_bindings = true

config.initial_cols = 180
config.initial_rows = 40

config.window_padding = {
    top = '2cell'
}

config.keys = { -- paste from the clipboard
{
    key = 'c',
    mods = 'SUPER',
    action = wezterm.action.CopyTo 'ClipboardAndPrimarySelection'
}, {
    key = 'v',
    mods = 'SUPER',
    action = wezterm.action.PasteFrom 'Clipboard'
}, {
    key = 'r',
    mods = 'CMD|SHIFT',
    action = wezterm.action.ReloadConfiguration
}}

return config
