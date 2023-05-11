return {
  "cljoly/telescope-repo.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
  keys = {
    {
      "<leader>r",
      function()
        require("telescope").extensions.repo.list { fd_opts = { "--no-ignore" } }
      end,
      desc = "repos"
    },
  },
  config = function()
  end,
}
