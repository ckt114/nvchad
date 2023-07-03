function _G.cmd(command)
  return table.concat({ "<cmd>", command, "<cr>" })
end

return {
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
