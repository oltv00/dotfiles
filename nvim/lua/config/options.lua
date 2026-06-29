-- Line numbers
vim.opt.nu = true -- enable line numbers
vim.opt.relativenumber = true -- enable relative numbers (rnu)

-- Tab setup
vim.opt.tabstop = 4 -- width of an actual tab character, in spaces
vim.opt.softtabstop = 4 -- the amount of space (in spaces) that hitting the Tab key should indent
vim.opt.shiftwidth = 4 -- the amount of indentation (in spaces) that built-in functionality should insert
vim.opt.expandtab = true -- inserts space characters instead of using tabs

-- Search
vim.opt.hlsearch = false -- don't highlight search results by default

-- Set leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Copy/Paste to system clipboard
vim.opt.clipboard = "unnamedplus"
