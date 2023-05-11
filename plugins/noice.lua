local default_view = {
  border = {
    style = "none",
    padding = { 1, 2 },
  },
  filter_options = {},
  win_options = {
    winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder",
  },
}

return {
  "folke/noice.nvim",
  dependencies = {
    "MunifTanjim/nui.nvim",
  },
  event = "VeryLazy",
  opts = {
    presets = {
      long_message_to_split = true,
    },
    lsp = {
      progress = { enabled = false },
      signature = { enabled = false },
      hover = { enabled = false },
      message = { enable = false },
    },
    views = {
      cmdline_popup = default_view,
      confirm = default_view,
    },
  },
}
