-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt
opt.relativenumber = false
-- 默认缩进4
opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.guifont = "Fira Code:h14"

-- python
opt.g.lazyvim_python_lsp = "pyright"
opt.g.lazyvim_python_ruff = "ruff"
