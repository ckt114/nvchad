local builtin = require("telescope.builtin")

return {
  "nvim-telescope/telescope.nvim",
  keys = {
    { "<leader>/",       false },
    { "<leader><space>", false },
    {
      "<leader>fh",
      function()
        builtin.help_tags()
      end,
      desc = "find help",
    },
    {
      "<leader>fH",
      function()
        builtin.highlights()
      end,
      desc = "find highlights",
    },
    {
      "<leader>fo",
      function()
        builtin.oldfiles()
      end,
      desc = "find all recent files",
    },
    {
      "<leader>fO",
      function()
        builtin.vim_options()
      end,
      desc = "find vim options",
    },
    {
      "<leader>fr",
      function()
        builtin.oldfiles({ cwd_only = true })
      end,
      desc = "find recent files",
    },
    {
      "<leader>fs",
      function()
        builtin.current_buffer_fuzzy_find()
      end,
      desc = "find string in buffer",
    },
    { "<leader>ft", "<cmd>Telescope themes<cr>", desc = "find themes" },
  },
  opts = {
    extensions_list = { "repo", "undo" },
    -- defaults = {
    --   sorting_strategy = "ascending",
    --   layout_config = {
    --     horizontal = {
    --       prompt_position = "top",
    --       preview_width = 0.70,
    --     },
    --     width = 0.95,
    --     height = 0.95,
    --     preview_cutoff = 200,
    --   },
    -- },
  },
}
