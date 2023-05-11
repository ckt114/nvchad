return {
  "lewis6991/gitsigns.nvim",
  keys = {
    {
      "<leader>gd",
      function()
        require("gitsigns").diffthis()
      end,
      desc = "git diff",
    },
  },
}
