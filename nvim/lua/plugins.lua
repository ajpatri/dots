
-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  -- Colorschemes
  use 'dracula/vim'
  use 'Mofiqul/vscode.nvim'
  use 'rebelot/kanagawa.nvim'
  use 'sainnhe/sonokai'

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = [[require('config.treesitter')]],
  }

  use {
    'neovim/nvim-lspconfig',
    config = [[require('config.lsp')]]
  }

  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use {
    'hrsh7th/nvim-cmp',
    config = [[require('config.cmp')]]
  }

  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'rafamadriz/friendly-snippets'

  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} },
    config = [[require('config.telescope')]]
  }

  use {
    'folke/which-key.nvim',
    config = [[require('config.whichkey')]]
  }

  use {
    'ahmedkhalf/project.nvim',
    config = function()
      require('project_nvim').setup {}
    end
  }

end)
