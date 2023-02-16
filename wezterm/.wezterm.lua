local wezterm = require 'wezterm'

return {
  -- Window padding
  window_padding = {
    bottom = 0,
    top = 2,
    left = 0,
    right = 0,
  },
  -- Color scheme
  color_scheme = "tokyonight",
  -- timeout_milliseconds defaults to 1000 and can be omitted
  leader = { key = 'a', mods = 'CTRL', timeout_milliseconds = 1000 },
  keys = {
    -- Splitting Pane
    {
      key = '|',
      mods = 'LEADER|SHIFT',
      action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
    },
    {
      key = '-',
      mods = 'LEADER',
      action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
    },
    -- Send "CTRL-A" to the terminal when pressing CTRL-A, CTRL-A
    {
      key = 'a',
      mods = 'LEADER|CTRL',
      action = wezterm.action.SendString '\x01',
    },
  },
}
