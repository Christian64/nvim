vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require('nvim-tree').setup({
  actions = {
    open_file = { quit_on_open = true }
  },
  context_commentstrig = {
    enable = true,
    enable_autocmd = false
  },

diagnostics = {
        enable = true,
        show_on_dirs = false,
        show_on_open_dirs = true,
        debounce_delay = 50,
        severity = {
          min = vim.diagnostic.severity.HINT,
          max = vim.diagnostic.severity.ERROR,
        },
        icons = {
          hint = "",
          info = "",
          warning = "",
          error = "",
        },
  },

 float = {
     enable = true,
     quit_on_focus_loss = true,
     open_win_config = {
      relative = "editor",
      border = "rounded",
      width = 30,
      height = 30,
      row = 1,
      col = 1,
     },
}
})

vim.keymap.set('n', ';n', ':NvimTreeFindFileToggle<CR>')
