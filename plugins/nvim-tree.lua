local function on_attach(bufnr)
  local api = require("nvim-tree.api")

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  api.config.mappings.default_on_attach(bufnr)

  vim.keymap.del("n", "<Tab>", { buffer = bufnr })

  vim.keymap.set("n", "?", api.tree.toggle_help, opts("Help"))
  vim.keymap.set("n", "-", api.node.open.horizontal, opts("Open: Horizontal Split"))
  vim.keymap.set("n", "|", api.node.open.vertical, opts("Open: Vertical Split"))
  vim.keymap.set("n", "C", api.tree.change_root_to_node, opts("CD"))
  vim.keymap.set("n", "e", api.tree.expand_all, opts("Expand All"))
  vim.keymap.set("n", "E", api.tree.collapse_all, opts("Collapse"))
end

return {
  "nvim-tree/nvim-tree.lua",
  commit = "0db85a70248f9a90e61af5cdbafe5d9f4320f719",
  cmd = "NvimTreeToggle",
  keys = {
    { "<leader>e", cmd("NvimTreeToggle"), desc = "nvimtree" },
  },
  opts = {
    actions = {
      open_file = {
        resize_window = true,
      },
    },
    filters = {
      dotfiles = true,
    },
    git = {
      enable = true,
      ignore = true,
    },
    modified = {
      enable = true,
    },
    on_attach = on_attach,
    renderer = {
      add_trailing = true,
      highlight_git = true,
      highlight_modified = "all",
      icons = {
        git_placement = "after",
        glyphs = {
          git = {
            ignored = "",
          },
        },
      },
      indent_markers = {
        enable = true,
      },
      root_folder_label = true,
    },
    update_focused_file = {
      enable = true,
      update_root = false,
    },
    view = {
      centralize_selection = true,
    },
  },
}
