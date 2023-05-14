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
    { "<leader>ft", cmd("Telescope themes"), desc = "find themes" },
  },
  -- opts = {
  --   extensions = {
  --     project = {
  --       base_dirs = { path = "~/Projects" },
  --       sync_with_nvim_tree = true,
  --     },
  --   },
  --   extensions_list = { "project", "repo", "themes", "undo" },
  -- },
  config = function(_, opts)
    dofile(vim.g.base46_cache .. "telescope")
    local telescope = require "telescope"

    opts.extensions = {
      project = {
        base_dirs = { "~/Projects" },
        sync_with_nvim_tree = true,
      },
    }
    telescope.setup(opts)

    local extensions_list = { "project", "themes", "undo" }
    for _, ext in ipairs(extensions_list) do
      telescope.load_extension(ext)
    end
  end,
}
