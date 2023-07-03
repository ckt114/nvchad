---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require("custom.highlights")

M.ui = {
  theme = "one_light",
  theme_toggle = { "one_light", "kanagawa" },
  -- extended_integrations = { "alpha" },
  hl_override = highlights.override,
  hl_add = highlights.add,
  statusline = {
    separator_style = "block",
    overriden_modules = function()
      local st_modules = require "nvchad.statusline.default"
      return {
        cursor_position = function()
          return st_modules.cursor_position() .. "%l,%c "
        end,
      }
    end,
  },
  tabufline = {
    overriden_modules = function()
      return {
        buttons = function()
          return "%@TbToggle_theme@%#TbLineThemeToggleBtn#" .. vim.g.toggle_theme_icon .. "%X"
        end,
      }
    end,
  },
  lsp = {
    signature = {
      disabled = true,
      silent = true,
    },
  },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require("custom.mappings")

return M
