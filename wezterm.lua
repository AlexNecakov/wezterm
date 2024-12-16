local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.color_scheme = 'Tokyo Night Storm'

config.font =
    wezterm.font('JetBrains Mono')
config.font_size = 17

return config
