return {
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
}
