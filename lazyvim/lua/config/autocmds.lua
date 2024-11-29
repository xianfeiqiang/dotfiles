-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- 根据文件类型设置indent size
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "sh", "md", "txt", "conf", "java", "py", "groovy" },
  callback = function()
    vim.b.autoformat = true
    vim.opt_local.expandtab = true
    vim.opt_local.shiftwidth = 4
    vim.opt_local.tabstop = 4
    vim.opt_local.softtabstop = 4
  end,
})
