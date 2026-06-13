local modes = {
  ["LVDS-1"] = { "1366x768@60.00Hz" },
  ["VGA-1"] = {
    "1920x1080@60.00Hz", 
    "1600x900@60.00Hz", 
    "1280x1024@75.03Hz", 
    "1280x1024@60.02Hz", 
    "1152x864@75.00Hz", 
    "1024x768@75.03Hz", 
    "1024x768@60.00Hz", 
    "800x600@75.00Hz",
    "800x600@60.32Hz", 
    "640x480@75.00Hz", 
    "640x480@59.94Hz",
    "720x400@70.08Hz"
  }
}

hl.monitor({
  output = "LVDS-1",
  mode = "1366x768@60",
  position = "auto",
  scale = 1,
  disabled = true 
})

hl.monitor({
  output = "VGA-1",
  mode = modes["VGA-1"][1],
  position = "auto",
  scale = "auto"
})
