return {
  -- 测试期间刷新输出缓冲区，方便查看stdout和stderr信息
  "nvim-neotest/neotest",
  opts = {
    adapters = {
      ["neotest-python"] = {
        dap = { justMyCode = false },
        args = { "--capture=no" },
        pytest_discover_instances = true,
      },
    },
  },
}
