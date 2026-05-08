-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

-- 基础体验
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.termguicolors = true
opt.mouse = "a"
opt.clipboard = "unnamedplus"
opt.confirm = true

-- 缩进
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.softtabstop = 2
opt.smartindent = true

-- Python 常用 4 空格
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "python" },
  callback = function()
    vim.bo.shiftwidth = 4
    vim.bo.tabstop = 4
    vim.bo.softtabstop = 4
  end,
})

-- 搜索
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true

-- 分屏
opt.splitright = true
opt.splitbelow = true

-- 滚动留白
opt.scrolloff = 8
opt.sidescrolloff = 8

-- 文件
opt.undofile = true
opt.swapfile = false
opt.backup = false
opt.writebackup = false

-- 显示
opt.signcolumn = "yes"
opt.wrap = false
opt.linebreak = true
opt.showmode = false
opt.laststatus = 3
opt.cmdheight = 0

-- 补全
opt.completeopt = "menu,menuone,noselect"

-- 性能
opt.updatetime = 200
opt.timeoutlen = 400

-- 透明背景，毛玻璃效果需要终端支持，例如 WezTerm / Kitty / Ghostty
vim.g.snacks_animate = false
-- 关闭 LazyVim/Snacks 动画
vim.g.snacks_animate = false
-- 更干净的命令行
vim.opt.cmdheight = 0
-- 减少提示等待
vim.opt.timeoutlen = 350
vim.opt.updatetime = 200
