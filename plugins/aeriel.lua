return {
  "stevearc/aerial.nvim",
  keys = {
    {
      "<leader>to",
      function()
        require("aerial").toggle()
      end,
      desc = "toggle outline",
    },
  },
  opts = {},
}
