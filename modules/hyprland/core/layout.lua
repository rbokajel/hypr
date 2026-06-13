hl.config({
  general = {
    gaps_in = 5,
    gaps_out = 10,

    border_size = 3,
    col = {
      active_border = { colors = { "rgba(81a1c1aa)" }, angle = 45 },
      inactive_border = "rgba(595959aa)"
    },

    resize_on_border = false,

    allow_tearing = false,

    layout = "scrolling"
  },

  decoration = {
    rounding = 8,

    active_opacity = 1.0,
    inactive_opacity = 1.0,

    blur = {
      enabled = false,
      size = 0,
      passes = 1,

      vibrancy = 0.1696
    }
  },

  scrolling = { },

  misc = {
    force_default_wallpaper = 1,
    disable_hyprland_logo = true
  }

})
