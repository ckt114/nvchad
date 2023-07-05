local opt = vim.opt

opt.relativenumber = true
opt.conceallevel = 2
opt.wrap = false

local function augroup(name)
  return vim.api.nvim_create_augroup("nvchad_" .. name, { clear = true })
end

-- maximize help and show in buffer list
vim.api.nvim_create_autocmd("BufWinEnter", {
  group = augroup("maximize_help"),
  pattern = "*",
  callback = function(event)
    if vim.bo[event.buf].filetype == "help" then
      vim.cmd.only()
      vim.bo.buflisted = true
    end
  end,
})

-- disable numbers for terminals
vim.api.nvim_create_autocmd("TermOpen", {
  group = augroup("disable_term_number"),
  pattern = "*",
  callback = function()
    vim.cmd("setlocal nornu nonu")
    vim.cmd("startinsert")
  end,
})

-- disable diagnostics
vim.api.nvim_create_autocmd("BufEnter", {
  group = augroup("disable_yaml_diag"),
  pattern = "*",
  callback = function(args)
    vim.diagnostic.disable(args.buf)
  end,
})

-- set text width for markdown to 100 chars
vim.api.nvim_create_autocmd("BufEnter", {
  group = augroup("markdown_text_width"),
  pattern = "*.md",
  callback = function()
    vim.cmd("set textwidth=100")
  end,
})

-- highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  group = augroup("highlight_yank"),
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.filetype.add({
  extension = {
    tf = "terraform",
    tftpl = "go",
    tmpl  = "go",
  },
})

vim.lsp.set_log_level("off")
