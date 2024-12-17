local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.color_scheme = 'cyberpunk'
config.window_background_opacity = 0.95
config.font_size = 34

require 'launchmenu'
return config
