-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- 放弃local opt = vim.opt 是因为有vim/_options.lua: Unkonw option 'g' 的报错

vim.opt.relativenumber = false
vim.opt.expandtab = true
-- 默认缩进4
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.guifont = "Fira Code:h14"

-- python
vim.g.lazyvim_python_lsp = "pyright"
vim.g.lazyvim_python_ruff = "ruff"
