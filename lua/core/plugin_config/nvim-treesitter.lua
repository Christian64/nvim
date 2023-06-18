require('hlargs').setup()
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "javascript", "typescript", "json", "rust", "lua", "query", "vim", "vimdoc", "yaml"},
  sync_install = false,
  auto_install = true,

  highlight = {
    enable = true,
    disable = {},
    additional_vim_regex_highlighting = false
  },
  autotag = {
    enable = true
  },
  indent = {
    enable = true
  },
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
  }
}
