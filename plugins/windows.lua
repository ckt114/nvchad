return {
  "anuvyklack/windows.nvim",
  dependencies = {
    "anuvyklack/middleclass",
    "anuvyklack/animation.nvim",
  },
  keys = {
    { "<leader>M", "<cmd>WindowsMaximize<cr>", desc = "maximize" },
    { "<leader>we", "<cmd>WindowsEqualize<cr>", desc = "equalize" },
    { "<leader>wh", "<cmd>WindowsMaximizeHorizontally<cr>", desc = "horizontally" },
    { "<leader>wm", "<cmd>WindowsMaximize<cr>", desc = "maximize" },
    { "<leader>wv", "<cmd>WindowsMaximizeVertically<cr>", desc = "vertically" },
  },
  opts = {},
}
