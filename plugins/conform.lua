return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      python = { "isort", "black" },
      javascript = { { "prettierd", "prettier" } },
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
