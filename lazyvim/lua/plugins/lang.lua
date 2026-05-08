return {
  -- Mason 安装必要工具
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        -- Python
        "pyright",
        "ruff",
        "black",

        -- Web
        "html-lsp",
        "css-lsp",
        "typescript-language-server",
        "prettier",
        "eslint_d",

        -- Shell
        "bash-language-server",
        "shellcheck",
        "shfmt",
      },
    },
  },

  -- LSP
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {
          settings = {
            python = {
              analysis = {
                typeCheckingMode = "basic",
                autoSearchPaths = true,
                useLibraryCodeForTypes = true,
              },
            },
          },
        },

        ruff = {},

        html = {},
        cssls = {},
        bashls = {},

        -- LazyVim 新版一般使用 ts_ls
        ts_ls = {},
      },
    },
  },

  -- Formatter
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        python = { "ruff_format", "black" },
        html = { "prettier" },
        css = { "prettier" },
        scss = { "prettier" },
        javascript = { "prettier" },
        javascriptreact = { "prettier" },
        json = { "prettier" },
        yaml = { "prettier" },
        sh = { "shfmt" },
        bash = { "shfmt" },
      },
      format_on_save = {
        timeout_ms = 1500,
        lsp_fallback = true,
      },
    },
  },

  -- Lint
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        python = { "ruff" },
        javascript = { "eslint_d" },
        javascriptreact = { "eslint_d" },
        sh = { "shellcheck" },
        bash = { "shellcheck" },
      },
    },
  },

  {
    {
      "linux-cultist/venv-selector.nvim",
      dependencies = {
        "neovim/nvim-lspconfig",
        { "nvim-telescope/telescope.nvim", branch = "0.1.x", dependencies = { "nvim-lua/plenary.nvim" } }, -- optional: you can also use fzf-lua, snacks, mini-pick instead.
      },
      ft = "python", -- Load when opening Python files
      keys = {
        -- 切换虚拟环境
        { ",v", "<cmd>VenvSelect<vs>" },
        -- 自动加载上次选择的虚拟环境
        -- { ",c", "<cmd>VenvSelectCached<vc>" },
      },
      opts = { -- this can be an empty lua table - just showing below for clarity.
        search = {
          workspace = {
            command = "fd python$ $WORKSPACE_PATH --full-path --color never -E /proc -unrestricted",
          },
          uv_script = {
            command = "uv python find --script '$CURRENT_FILE'",
          },
        }, -- if you add your own searches, they go here.
        options = {}, -- if you add plugin options, they go here.
      },
    },
  },
}
