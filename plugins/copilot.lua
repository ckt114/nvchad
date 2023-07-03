return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  enabled = false,
  opts = {
    panel = {
      auto_refresh = true,
      layout = {
        position = "right",
        ratio = 0.3,
      },
    },
    suggestion = {
      auto_trigger = true,
      keymap = {
        accept = "<C-l>",
      },
    },
  },
}
