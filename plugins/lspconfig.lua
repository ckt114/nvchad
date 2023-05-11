local lsp_servers = {
  "ansiblels",
  "bashls",
  "dockerls",
  "golangci_lint_ls",
  "gopls",
  "groovyls",
  "helm_ls",
  "intelephense",
  "jsonls",
  "lua_ls",
  "marksman",
  "phpactor",
  "pyright",
  "ruby_ls",
  "terraformls",
  "yamlls",
}

return {
  {
    "williamboman/mason.nvim",
    keys = {
      { "<leader>ma", "<cmd>MasonInstallAll<cr>", desc = "mason install all" },
      { "<leader>mI", "<cmd>Mason<cr>",           desc = "mason info" },
      { "<leader>mi", ":MasonInstall ",           desc = "mason install" },
      { "<leader>ml", "<cmd>MasonLog<cr>",        desc = "mason log" },
    },
    opts = {
      ensure_installed = {
        -- formatter
        "black",
        "isort",
        "prettier",
        "stylua",
        "yamlfmt",
        "yapf",

        -- linter
        "ansible-lint",
        "flake8",
        "golangci-lint",
        "golangci-lint-langserver",
        "jsonlint",
        "luacheck",
        "markdownlint",
        "pylint",
        "shellcheck",
        "tfsec",
        "tflint",
        "yamllint",

        -- lsp
        "ansible-language-server",
        "bash-language-server",
        "dockerfile-language-server",
        "gopls",
        -- "groovy-language-server",
        "helm-ls",
        "intelephense",
        "json-lsp",
        "lua-language-server",
        "marksman",
        -- "phpactor",
        "pyright",
        -- "ruby-lsp",
        "terraform-ls",
        "yaml-language-server",
      },
    },
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = lsp_servers,
    },
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        local null_ls = require("null-ls")
        local builtins = null_ls.builtins

        local sources = {
          builtins.formatting.autoflake,     -- python
          builtins.formatting.autopep8,      -- python
          -- builtins.formatting.black, -- python
          builtins.formatting.beautysh,      -- bash, sh, zsh
          builtins.formatting.gofmt,         -- go
          builtins.formatting.prettier,      -- markdown, json, yaml
          -- builtins.formatting.stylua, -- lua
          builtins.formatting.terrafmt,      -- terraform inside markdown
          builtins.formatting.terraform_fmt, -- terraform

          builtins.diagnostics.ansiblelint,
          builtins.diagnostics.flake8,
          -- builtins.diagnostics.golangci_lint,
          builtins.diagnostics.jsonlint,
          builtins.diagnostics.luacheck,
          builtins.diagnostics.markdownlint,
          builtins.diagnostics.php,
          builtins.diagnostics.pylint,
          builtins.diagnostics.reek,       -- ruby
          builtins.diagnostics.shellcheck, -- sh
          builtins.diagnostics.terraform_validate,
          builtins.diagnostics.tfsec,
          builtins.diagnostics.yamllint,
        }
        null_ls.setup({ debug = true, sources = sources })
      end,
    },
    config = function()
      require("plugins.configs.lspconfig")

      local on_attach = require("plugins.configs.lspconfig").on_attach
      local capabilities = require("plugins.configs.lspconfig").capabilities

      local lspconfig = require("lspconfig")
      local servers = lsp_servers

      for _, lsp in ipairs(servers) do
        lspconfig[lsp].setup({
          on_attach = on_attach,
          capabilities = capabilities,
        })
      end
      -- lspconfig.pyright.setup { ... }
    end,
  },
}
