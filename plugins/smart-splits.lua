return {
  "mrjones2014/smart-splits.nvim",
  keys = {
    {
      "<Up>",
      function()
        require("smart-splits").resize_up(2)
      end,
      desc = "resize split up",
    },
    {
      "<Down>",
      function()
        require("smart-splits").resize_down(2)
      end,
      desc = "resize split down",
    },
    {
      "<Left>",
      function()
        require("smart-splits").resize_left(2)
      end,
      desc = "resize split left",
    },
    {
      "<Right>",
      function()
        require("smart-splits").resize_right(2)
      end,
      desc = "resize split right",
    },
    {
      "_",
      function()
        require("smart-splits").resize_left()
      end,
      desc = "resize split left",
    },
    {
      "+",
      function()
        require("smart-splits").resize_right()
      end,
      desc = "resize split right",
    },
  },
  opts = {},
}
