local terminal = "alacritty"
local browser = "qutebrowser"
local menu = "[float] ~/.config/rofi/launchers/type-1/launcher.sh drun"

local main_mod = "SUPER"

hl.bind(main_mod .. "+ semicolon", hl.dsp.exec_cmd(terminal))
hl.bind(main_mod .. "+ SHIFT + C", hl.dsp.window.close())
hl.bind(main_mod .. " + M", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))
hl.bind(main_mod .. " + R", hl.dsp.exec_cmd(menu))
hl.bind(main_mod .. " + B", hl.dsp.exec_cmd(browser))
hl.bind(main_mod .. " + C", hl.dsp.window.float({ action = "toggle" }))
hl.bind(main_mod .. " + P", hl.dsp.window.pseudo())
hl.bind(main_mod .. " + N", hl.dsp.layout("togglesplit"))

hl.bind(main_mod .. " + H",  hl.dsp.focus({ direction = "left" }))
hl.bind(main_mod .. " + L", hl.dsp.focus({ direction = "right" }))
hl.bind(main_mod .. " + K",    hl.dsp.focus({ direction = "up" }))
hl.bind(main_mod .. " + J",  hl.dsp.focus({ direction = "down" }))

hl.bind(main_mod .. " + SHIFT + H", hl.dsp.window.move({ direction = "left" }))
hl.bind(main_mod .. " + SHIFT + L", hl.dsp.window.move({ direction = "right" }))
hl.bind(main_mod .. " + SHIFT + K", hl.dsp.window.move({ direction = "up" }))
hl.bind(main_mod .. " + SHIFT + J", hl.dsp.window.move({ direction = "down" }))

hl.bind(main_mod .. " + CTRL + H", hl.dsp.window.resize({ x = -30, y = 0 }))
hl.bind(main_mod .. " + CTRL + L", hl.dsp.window.resize({ x = 30, y = 0 }))
hl.bind(main_mod .. " + CTRL + K", hl.dsp.window.resize({ x = 0, y = -30 }))
hl.bind(main_mod .. " + CTRL + J", hl.dsp.window.resize({ x = 0, y = 30 }))

local workspace_binds = { 7, 8, 9, 0, 6, 1, 2, 3, 4, 5 }
for i, key in ipairs(workspace_binds) do
    hl.bind(main_mod .. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(main_mod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
end

-- Example special workspace (scratchpad)
hl.bind(main_mod .. " + S",         hl.dsp.workspace.toggle_special("magic"))
hl.bind(main_mod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

