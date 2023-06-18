local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'windwp/nvim-ts-autotag'
  use 'wbthomason/packer.nvim'
  use 'nvim-tree/nvim-tree.lua'
  use 'lewis6991/gitsigns.nvim'
  use 'nvim-tree/nvim-web-devicons'
  use 'jiangmiao/auto-pairs'
  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}
  use {'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'}}
  use { "catppuccin/nvim", as = "catppuccin" }
  use "MunifTanjim/prettier.nvim"

  use "christoomey/vim-tmux-navigator"
  use "JoosepAlviste/nvim-ts-context-commentstring"
  use "mg979/vim-visual-multi"

  use "tpope/vim-fugitive"
  use "Shatur/neovim-ayu"

  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })

  use {
    'numToStr/Comment.nvim',
      config = function()
          require('Comment').setup()
      end
  }

  use({
    "folke/noice.nvim",
    requires = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify"
    }
  })

  use "p00f/nvim-ts-rainbow"
  use 'm-demare/hlargs.nvim'

use {
  'glepnir/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
        theme = 'Doom'
    }
  end,
  requires = {'nvim-tree/nvim-web-devicons'}
}

  use ({"akinsho/toggleterm.nvim", tag = '*'})

  use {
  "nvim-telescope/telescope.nvim", tag = '0.1.1',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

use {
    "nvim-telescope/telescope-file-browser.nvim",
    requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
}
  use 'lpoto/telescope-docker.nvim'

  use({
    "kylechui/nvim-surround",
    tag = "*",
    config = function()
        require("nvim-surround").setup({
        })
    end
  })
  -- surround
  --
  use "tpope/vim-obsession"
  use "dhruvasagar/vim-prosession"

use({
    "glepnir/lspsaga.nvim",
    opt = true,
    branch = "main",
    event = "LspAttach",
    config = function()
      require("lspsaga").setup({})
    end,
    requires = {
        {"nvim-tree/nvim-web-devicons"},
        --Please make sure you install markdown and markdown_inline parser
        {"nvim-treesitter/nvim-treesitter"}
    }
})

  -- autocompletations
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use "L3MON4D3/LuaSnip"
  use "saadparwaiz1/cmp_luasnip"
  use "rafamadriz/friendly-snippets"
  use "onsails/lspkind.nvim"
  use "jose-elias-alvarez/null-ls.nvim"
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }

  if packer_bootstrap then
    require('packer').sync()
  end

end)
