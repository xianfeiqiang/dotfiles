return {
  -- Snacks 是 LazyVim 新版默认使用的 UI 组件
  {
    "folke/snacks.nvim",
    opts = {
      -- 关闭动画，启动和通知都会更干净
      animate = {
        enabled = false,
      },

      -- 简化通知
      notifier = {
        enabled = true,
        timeout = 1800,
        sort = { "level", "added" },
        style = "compact",
        top_down = false,
        margin = { top = 1, right = 1, bottom = 0 },
      },

      -- 简化启动页，不显示 LazyVim 大字
      dashboard = {
        enabled = true,
        preset = {
          header = "",

          keys = {
            {
              icon = " ",
              key = "f",
              desc = "Find File",
              action = ":lua Snacks.dashboard.pick('files')",
            },
            {
              icon = " ",
              key = "r",
              desc = "Recent Files",
              action = ":lua Snacks.dashboard.pick('oldfiles')",
            },
            {
              icon = " ",
              key = "g",
              desc = "Find Text",
              action = ":lua Snacks.dashboard.pick('live_grep')",
            },
            {
              icon = " ",
              key = "c",
              desc = "Config",
              action = ":lua Snacks.dashboard.pick('files', { cwd = vim.fn.stdpath('config') })",
            },
            {
              icon = " ",
              key = "s",
              desc = "Restore Session",
              section = "session",
            },
            {
              icon = "󰒲 ",
              key = "l",
              desc = "Lazy",
              action = ":Lazy",
            },
            {
              icon = " ",
              key = "q",
              desc = "Quit",
              action = ":qa",
            },
          },
        },

        sections = {
          {
            section = "keys",
            gap = 1,
            padding = 1,
          },
          {
            section = "startup",
          },
        },
      },
    },
  },
}
