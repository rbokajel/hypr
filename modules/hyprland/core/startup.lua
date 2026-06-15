hl.on("hyprland.start", function ()
  -- Hyprland Preliminaries
  hl.exec_cmd("hyprctl sercursor Nordzy-cursors 24")
  hl.exec_cmd("hyprpaper")

  hl.exec_cmd("noctalia-shell")
end)

hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("HYPRCURSOR_THEME", "Nordzy-cursors")
hl.env("HYPRCURSOR_SIZE", "24")
