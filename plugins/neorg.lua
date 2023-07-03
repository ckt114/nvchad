return {
  "nvim-neorg/neorg",
  dependencies = { "nvim-lua/plenary.nvim" },
  build = ":Neorg sync-parsers",
  ft = { "norg" },
  event = "VeryLazy",
  keys = {
    { "<leader>I", cmd "Neorg index", desc = "neorg" },
    { "<leader>nc", cmd "Neorg toggle-concealer", desc = "toggle concealer" },
    { "<leader>ni", cmd "Neorg index", desc = "neorg index" },
    { "<leader>nj", ":Neorg journal ", desc = "neorg journal" },
    { "<leader>nw", ":Neorg workspace ", desc = "neorg workspace" },
  },
  opts = {
    load = {
      ["core.defaults"] = {}, -- Loads default behaviour
      ["core.concealer"] = {}, -- Adds pretty icons to your documents
      ["core.dirman"] = { -- Manages Neorg workspaces
        config = {
          workspaces = {
            notes = "~/Documents/neorg",
          },
          default_workspace = "notes",
        },
      },
    },
  },
}
