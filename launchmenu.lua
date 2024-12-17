local wezterm = require 'wezterm'
local launch_menu = {}

if wezterm.target_triple:find("windows") then
    launch_menu.default_prog = { 'pwsh.exe' }
end

return {
    launch_menu = launch_menu,
}
