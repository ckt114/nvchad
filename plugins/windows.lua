return {
  "anuvyklack/windows.nvim",
  dependencies = {
    "anuvyklack/middleclass",
    "anuvyklack/animation.nvim",
  },
  keys = {
    { "<leader>M",  cmd("WindowsMaximize"),             desc = "maximize" },
    { "<leader>we", cmd("WindowsEqualize"),             desc = "equalize" },
    { "<leader>wh", cmd("WindowsMaximizeHorizontally"), desc = "horizontally" },
    { "<leader>wm", cmd("WindowsMaximize"),             desc = "maximize" },
    { "<leader>wv", cmd("WindowsMaximizeVertically"),   desc = "vertically" },
  },
  opts = {},
}
