return {
  "folke/which-key.nvim",
  opts = function()
    require("which-key").register({
      ["<leader>b"] = { name = "buffer" },
      ["<leader>f"] = { name = "find" },
      ["<leader>g"] = { name = "git" },
      ["<leader>l"] = { name = "lsp" },
      ["<leader>m"] = { name = "mason" },
      ["<leader>n"] = { name = "neorg" },
      ["<leader>t"] = { name = "toggle" },
      ["<leader>L"] = { name = "lazy" },
      ["<leader>w"] = { name = "window" },
    })
  end,
}
