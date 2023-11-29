return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      go = { "gofmt" },
      hcl = { "terraform_fmt" },
      javascript = { "prettier" },
      json = { "prettier" },
      lua = { "stylua" },
      markdown = { "prettier" },
      python = { "isort", "black" },
      terraform = { "terraform_fmt" },
      typescript = { "prettier" },
      vue = { "prettier" },
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
