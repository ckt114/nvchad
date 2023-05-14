function _G.cmd(command)
  return table.concat({ "<cmd>", command, "<cr>" })
end

return {
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    opts = {
      mapping = { "jk" },
    },
  },
  {
    "karb94/neoscroll.nvim",
    event = "BufRead",
    opts = {},
  },
  {
    "tiagovla/scope.nvim",
    event = "TabNew",
    opts = {},
  },
}
