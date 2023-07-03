return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      terraform = { "terraform_fmt" },
    },
  },
  lazy = false,
  keys = {
    {
      "<leader>F",
      function()
        require("conform").format()
      end,
      desc = "format code",
    },
  },
}
