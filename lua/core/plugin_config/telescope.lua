local builtin = require('telescope.builtin')

require('telescope').setup{
  defaults = {
  file_ignore_patterns = {
      "node_modules"
    }
  },
  pickers = {},
  extensions = {
    docker = {},
    file_browser = {}
  }
}

-- function m()
--   local word = vim.fn.expand('<cword>')
--   builtin.live_grep()
--   print(word)
-- end

vim.keymap.set('n', ';n', ':Telescope file_browser<CR>')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<Tab>f', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.treesitter, {})
vim.keymap.set('n', '<M-w>', builtin.grep_string, {})

-- Git
vim.keymap.set('n', ';gb', builtin.git_branches, {})
vim.keymap.set('n', ';gc', builtin.git_bcommits, {})
vim.keymap.set('n', ';gs', builtin.git_status, {})
-- Git

-- Load the docker telescope extension
require("telescope").load_extension "docker"
require("telescope").load_extension "file_browser"
