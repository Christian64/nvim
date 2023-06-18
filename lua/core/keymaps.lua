vim.g.mapleader = " "

vim.keymap.set('n', '<leader>w', ':w! | Prettier<CR>')
vim.keymap.set('n', '<leader>q', ':q<CR>')
vim.keymap.set('n', ';p', "\"+p<CR>")
vim.keymap.set('n', ';y', "\"+y<CR>")
vim.keymap.set('n', ';;n', ":nohl<CR>")

vim.keymap.set({'n', 'i'}, '<M-r>', ":source %<CR>")

-- Buffers
vim.keymap.set('n', '<tab>p', ':bprev<CR>')
vim.keymap.set('n', '<tab>n', ':bnext<CR>')
vim.keymap.set('n', '<tab>d', ':bdelete<CR>')
vim.keymap.set('n', '<tab>v', ':vsplit<CR>')
vim.keymap.set('n', '<tab>h', ':split<CR>')
vim.keymap.set('n', '<tab>a', ':vnew<CR>')


vim.keymap.set('n', '<tab>j', ':LualineBuffersJump 1<CR>')
vim.keymap.set('n', '<tab>k', ':LualineBuffersJump 2<CR>')
vim.keymap.set('n', '<tab>l', ':LualineBuffersJump 3<CR>')
vim.keymap.set('n', '<tab>;', ':LualineBuffersJump 4<CR>')
-- Buffers

-- Git
vim.keymap.set('n', ';gp', ':Gitsigns preview_hunk_inline<CR>')
-- Git
