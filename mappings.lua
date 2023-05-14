local M = {}

local cmd = function(command)
  return table.concat({ "<CMD>", command, "<CR>" })
end

M.disabled = {
  n = {
    ["<C-c>"] = "",
    ["<tab>"] = "",
    ["<S-tab>"] = "",
    ["<leader>ca"] = "",
    ["<leader>cc"] = "",
    ["<leader>ch"] = "",
    ["<leader>cm"] = "",
    ["<leader>b"] = "",
    ["<leader>D"] = "",
    ["<leader>fm"] = "",
    ["<leader>h"] = "",
    ["<leader>n"] = "",
    ["<leader>ph"] = "",
    ["<leader>pt"] = "",
    ["<leader>q"] = "",
    ["<leader>ra"] = "",
    ["<leader>rh"] = "",
    ["<leader>rn"] = "",
    ["<leader>v"] = "",
    ["<leader>wa"] = "",
    ["<leader>wk"] = "",
    ["<leader>wK"] = "",
    ["<leader>wl"] = "",
    ["<leader>wr"] = "",
    ["<leader>x"] = "",
  },
}

M.general = {
  i = {
    ["<C-c>"] = { "<esc>", "escape" },
  },
  n = {
    ["<tab>"] = { "<c-w><c-w>", "move round", opts = { nowait = true } },
    ["<leader>bk"] = {
      function()
        require("nvchad_ui.tabufline").closeAllBufs()
      end,
      "close all buffers",
    },
    ["<leader>bn"] = { cmd("enew"), "new buffer" },
    ["<leader>N"] = {
      function()
        vim.cmd("set nu!")
        vim.cmd("set rnu!")
      end,
      "line number" },
    ["<leader>r"] = { cmd("e!"), "reload file" },
    ["<leader><tab>"] = { cmd("tabnew"), "new tab" },
    ["<leader>tb"] = {
      function()
        require("base46").toggle_theme()
      end,
      "toggle background",
    },
    ["<leader>tf"] = { cmd("setlocal foldmethod=indent"), "toggle folding" },
    ["<leader>tt"] = { cmd("terminal"), "toggle term" },
    ["<leader>tm"] = { cmd("NvCheatsheet"), "toggle mappings" },
    ["<leader>s"] = { "<cmd>w<cr>", "save" },
    ["<leader>L"] = { cmd("Lazy"), "lazy" },
  },
  t = {
    ["jk"] = { "<C-\\><C-n>", desc = "term normal mode" },
  },
}

M.comment = {
  n = {
    ["<leader>/"] = {
      function()
        require("Comment.api").toggle.linewise.current()
      end,
      "comment",
    },
  },
  v = {
    ["<leader>/"] = {
      "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>",
      "comment",
    },
  },
}

M.gitsigns = {
  n = {
    ["<leader>gD"] = {
      function()
        require("gitsigns").toggle_deleted()
      end,
      "git deleted",
    },
  },
}

M.lspconfig = {
  n = {
    ["<leader>F"] = {
      function()
        vim.lsp.buf.format({ async = true })
      end,
      "format code",
    },
    ["<leader>la"] = {
      function()
        vim.lsp.buf.code_action()
      end,
      "lsp code_action",
    },
    ["<leader>li"] = { cmd("LspInfo"), "lsp info" },
    ["<leader>ll"] = { cmd("LspLog"), "lsp log" },
  },
}

M.nvterm = {
  n = {
    ["<leader>th"] = {
      function()
        require("nvterm.terminal").toggle("horizontal")
      end,
      "toggle horizontal term",
    },
    ["<leader>tv"] = {
      function()
        require("nvterm.terminal").toggle("vertical")
      end,
      "toggle vertical term",
    },
    ["<leader><space>"] = {
      function()
        require("nvterm.terminal").toggle("vertical")
      end,
      "terminal",
    },
  },
  t = {
    ["<leader>th"] = {
      function()
        require("nvterm.terminal").toggle("horizontal")
      end,
      "toggle horizontal term",
    },
    ["<leader>tv"] = {
      function()
        require("nvterm.terminal").toggle("vertical")
      end,
      "toggle vertical term",
    },
    ["<leader><space>"] = {
      function()
        require("nvterm.terminal").toggle("vertical")
      end,
      "terminal",
    },
  },
}

M.tabufline = {
  n = {
    ["<S-l>"] = {
      function()
        require("nvchad_ui.tabufline").tabuflineNext()
      end,
      "goto next buffer",
    },
    ["<S-h>"] = {
      function()
        require("nvchad_ui.tabufline").tabuflinePrev()
      end,
      "goto prev buffer",
    },
    ["-"] = {
      function()
        require("nvchad_ui.tabufline").move_buf(-1)
      end,
      "move buffer left",
    },
    ["="] = {
      function()
        require("nvchad_ui.tabufline").move_buf(1)
      end,
      "move buffer right",
    },
    ["<leader>d"] = {
      function()
        local bufs = vim.fn.getbufinfo({ buflisted = true })
        require("nvchad_ui.tabufline").close_buffer()
        if not bufs[2] then
          require("alpha").start(true)
        end
      end,
      "close buffer",
    },
    ["<leader>bd"] = {
      function()
        require("nvchad_ui.tabufline").close_buffer()
      end,
      "close buffer",
    },
  },
}

return M
