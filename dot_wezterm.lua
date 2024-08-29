local wezterm = require 'wezterm'
local config = {}
config.font = wezterm.font 'JetBrains Mono'
config.font_size = 10.0
config.color_scheme = 'Vs Code Dark+ (Gogh)'
config.use_fancy_tab_bar = false
config.show_tabs_in_tab_bar = false
config.show_new_tab_button_in_tab_bar = false
config.enable_tab_bar = false
config.window_decorations = 'RESIZE'
config.disable_default_key_bindings = true

config.window_padding = {
    top = '1cell'
}

return config
