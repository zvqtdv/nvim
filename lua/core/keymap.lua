vim.g.mapleader = " "

local keymap = vim.keymap

-- ---------- 插入模式 ---------- ---
keymap.set("i", "jk", "<ESC>")

-- ---------- 视觉模式 ---------- ---
-- 单行或多行移动
keymap.set("v", "Y", ":m '>+1<CR>gv=gv")
keymap.set("v", "O", ":m '<-2<CR>gv=gv")

-- ---------- 正常模式 ---------- ---
-- 窗口
keymap.set("n", "<leader>sv", "<C-w>v") -- 水平新增窗口 
keymap.set("n", "<leader>sh", "<C-w>s") -- 垂直新增窗口

keymap.set("n", "y", "h")
keymap.set("n", "n", "j")
keymap.set("n", "e", "k")
keymap.set("n", "o", "l")

keymap.set("n", "<C-y>", "<C-w>h")
keymap.set("n", "<C-n>", "<C-w>j")
keymap.set("n", "<C-e>", "<C-w>k")
keymap.set("n", "<C-o>", "<C-w>l")

-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- 切换buffer
keymap.set("n", "<C-L>", ":bnext<CR>")
keymap.set("n", "<C-H>", ":bprevious<CR>")

-- ---------- 插件 ---------- ---

-- nvim-tree
--keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
