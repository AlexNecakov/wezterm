local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.color_scheme = 'cyberpunk'
config.window_background_opacity = 0.95

config.window_decorations = "NONE"

if wezterm.target_triple == "x86_64-pc-windows-msvc" then
    config.default_prog = { 'pwsh.exe' }
    config.font_size = 20
elseif wezterm.target_triple:find "linux" then
    config.font_size = 24
else
    -- macOS or others
    config.font_size = 34
end

wezterm.on('gui-startup', function(cmd)
    local _, _, window = wezterm.mux.spawn_window(cmd or {})
    window:gui_window():toggle_fullscreen()
end)

return config
