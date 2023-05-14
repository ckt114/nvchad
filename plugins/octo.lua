return {
  "pwntester/octo.nvim",
  cmd = "Octo",
  keys = {
    { "<leader>gL", cmd("Octo pr list"),       desc = "list prs" },
    { "<leader>ge", ":Octo pr edit ",          desc = "edit pr" },
    { "<leader>gr", cmd("Octo pr create"),     desc = "create pr" },
    { "<leader>gR", cmd("Octo review start"),  desc = "review pr" },
    { "<leader>gS", cmd("Octo review submit"), desc = "submit review" },
  },
  opts = {
    mappings = {
      pull_request = {
        add_comment = { lhs = "<space>gc", desc = "add comment" },
        add_label = { lhs = "<space>gl", desc = "add label" },
        reload = { lhs = "<C-r>", desc = "reload pr" },
        reopen_issue = { lhs = "<space>gO", desc = "re-open pr" },
        close_issue = { lhs = "<space>gC", desc = "close pr" },
        list_changed_files = { lhs = "<space>gf", desc = "changed files" },
        open_in_browser = { lhs = "<space>gb", desc = "open pr in browser" },
      },
    },
  },
}
