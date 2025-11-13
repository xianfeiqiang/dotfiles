return {
  "barrett-ruth/live-server.nvim",
  build = "npm install -g live-server",
  cmd = { "LiveServerStart", "LiveServerStop", "LiveServerToggle" },

  config = function()
    require("live-server").setup({
      port = 5555,
      browser = nil,
      open_browser_at_start = true,
      root = nil,
    })
  end,
  keys = {
    {
      "<leader>ls",
      "<cmd>LiveServerStart<cr>",
      desc = "Start Live Server",
    },
    {
      "<leader>lx",
      "<cmd>LiveServerStop<cr>",
      desc = "Stop Live Server",
    },
  },
}
