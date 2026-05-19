return {
  -- Snacks 是 LazyVim 新版默认使用的 UI 组件
  {
    "folke/snacks.nvim",
    opts = {
      -- 终端配置
      terminal = {
        enabled = true, -- 显式启用（默认就是 true）
        -- 自定义浮动终端的窗口样式
        win = {
          -- style = "terminal", -- 默认样式
          style = "float", -- 默认样式
          -- 如果你想让终端窗口更宽、更高，或者改变边界线，可以配置这里
          border = "rounded", -- 可选值: "none", "single", "double", "rounded", "solid", "shadow"
          width = 0.650, -- 占用屏幕 85% 的宽度
          height = 0.60, -- 占用屏幕 80% 的高度
          -- 如果添加了边框后觉得窗口太贴边，可以稍微增加一点 margin（可选）
          -- margin = { top = 30, right = 30, bottom = 30, left = 30 },
          wo = {
            winblend = 0, -- 窗口透明度 (0 为不透明)
          },
          keys = {
            -- 默认情况下在终端里按 q 或 <esc> 可能会有特殊行为
            -- 如果你想在这里自定义终端内部的快捷键，可以写在 keys 里
          },
        },
      },
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
