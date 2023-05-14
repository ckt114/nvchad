return {
  "sindrets/winshift.nvim",
  keys = {
    { "<S-A-h>", cmd("WinShift left"),  desc = "move window left" },
    { "<S-A-l>", cmd("WinShift right"), desc = "move window right" },
    { "<S-A-k>", cmd("WinShift up"),    desc = "move window up" },
    { "<S-A-j>", cmd("WinShift down"),  desc = "move window down" },
  },
  opts = {},
}
