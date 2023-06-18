local g = vim.g
local opt = vim.opt
local wo = vim.wo

g.loaded_netrw = 1
wo.number = true

opt.cursorline = true
opt.ignorecase = true
opt.smartcase = true

opt.backspace = '2'
opt.showcmd = true
opt.autowrite = true
opt.autoread = true
opt.relativenumber = true

opt.tabstop = 2
opt.shiftwidth = 2
opt.shiftround = true
opt.expandtab = true
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.termguicolors = true

opt.splitbelow = true
opt.splitright = true
