local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.color_scheme = 'cyberpunk'
config.window_background_opacity = 0.95

if wezterm.target_triple == ("x86_64-pc-windows-msvc") then
    config.default_prog = { 'pwsh.exe' }
    config.font_size = 20
elseif wezterm.target_triple:find "linux" then
    config.font_size = 20
else
    config.font_size = 34
end

return config
