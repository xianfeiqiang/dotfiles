-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- 更舒服的 leader
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- 保存 / 退出
map("n", "<leader>w", "<cmd>w<cr>", { desc = "Save file" })
map("n", "<leader>q", "<cmd>q<cr>", { desc = "Quit" })

-- 清除搜索高亮
map("n", "<Esc>", "<cmd>nohlsearch<cr>", { desc = "Clear search highlight" })

-- 窗口移动
map("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
map("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
map("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })
map("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })

-- 调整窗口大小
map("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
map("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
map("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
map("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

-- Buffer
map("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Previous buffer" })
map("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next buffer" })
map("n", "<leader>bd", "<cmd>bdelete<cr>", { desc = "Delete buffer" })

-- 移动选中文本
map("v", "J", ":m '>+1<cr>gv=gv", { desc = "Move selection down" })
map("v", "K", ":m '<-2<cr>gv=gv", { desc = "Move selection up" })

-- 保持光标居中
map("n", "<C-d>", "<C-d>zz", { desc = "Half page down" })
map("n", "<C-u>", "<C-u>zz", { desc = "Half page up" })
map("n", "n", "nzzzv", { desc = "Next search result" })
map("n", "N", "Nzzzv", { desc = "Previous search result" })

-- 终端
map("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
-- 使用 Snacks 组件切换浮动终端（按一次打开，再按一次隐藏）
map("n", "<leader>tt", function()
  Snacks.terminal.toggle()
end, { desc = "Toggle Floating Terminal" })

-- 代码相关
map("n", "<leader>cf", function()
  require("conform").format({ async = true, lsp_fallback = true })
end, { desc = "Format code" })

map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
map("n", "<leader>cr", vim.lsp.buf.rename, { desc = "Rename symbol" })
map("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
map("n", "gr", vim.lsp.buf.references, { desc = "References" })
map("n", "K", vim.lsp.buf.hover, { desc = "Hover" })

-- telescope
-- <leader>ff  查找文件
-- <leader>fs  搜索文本
-- <leader>fw  搜索当前单词
-- <leader>fr  最近文件
-- <leader>fb  buffers
-- <leader>fc  搜索 nvim 配置文件
-- <leader>sk  搜索快捷键
-- <leader>sc  搜索命令
-- <leader>sh  搜索帮助
map("n", "<leader>ff", function()
  Snacks.picker.files()
end, { desc = "Find files" })

map("n", "<leader>fF", function()
  Snacks.picker.files({ cwd = vim.fn.getcwd() })
end, { desc = "Find files cwd" })

map("n", "<leader>fs", function()
  Snacks.picker.grep()
end, { desc = "Find string" })

map("n", "<leader>fw", function()
  Snacks.picker.grep_word()
end, { desc = "Find word under cursor" })

map("n", "<leader>fr", function()
  Snacks.picker.recent()
end, { desc = "Recent files" })

map("n", "<leader>fb", function()
  Snacks.picker.buffers()
end, { desc = "Find buffers" })

map("n", "<leader>fc", function()
  Snacks.picker.files({ cwd = vim.fn.stdpath("config") })
end, { desc = "Find config files" })

map("n", "<leader>sk", function()
  Snacks.picker.keymaps()
end, { desc = "Search keymaps" })

map("n", "<leader>sc", function()
  Snacks.picker.commands()
end, { desc = "Search commands" })

map("n", "<leader>sh", function()
  Snacks.picker.help()
end, { desc = "Search help" })
