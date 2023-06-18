local Terminal  = require('toggleterm.terminal').Terminal
local npm = Terminal:new({ cmd = "lazynpm", direction="float", hidden = true })
local docker = Terminal:new({ cmd = "lazydocker", direction="float", hidden = true })
local git = Terminal:new({ cmd = "lazygit", direction="float", hidden = true })

function npmToggle()
  npm:toggle()
end

function dockerToggle()
  docker:toggle()
end

function gitToggle()
  git:toggle()
end


require("toggleterm").setup({
  direction="float",
  open_mapping = [[;t]]
})

vim.api.nvim_set_keymap("n", ";ln", "<cmd>lua npmToggle()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", ";ld", "<cmd>lua dockerToggle()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", ";lg", "<cmd>lua gitToggle()<CR>", {noremap = true, silent = true})
