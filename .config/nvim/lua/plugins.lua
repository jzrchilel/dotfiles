vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-lualine/lualine.nvim',
    requires = {
      'kyazdani42/nvim-web-devicons',
      opt = true
    }
  }
  use 'SmiteshP/nvim-gps'
  use 'jiangmiao/auto-pairs'
	-- Language Support
  use {
    'nvim-treesitter/nvim-treesitter',
    before = "neorg",
    run = ':TSUpdate'
  }
  use 'ellisonleao/carbon-now.nvim'
  use 'm-demare/hlargs.nvim'
  use 'noib3/nvim-cokeline'
  use 'numToStr/Comment.nvim'

  -- Themes
  use 'morhetz/gruvbox'
  use 'sainnhe/gruvbox-material'
  use 'p00f/nvim-ts-rainbow'
  use 'RRethy/nvim-base16'
  use 'windwp/nvim-ts-autotag'
  use 'bfrg/vim-cpp-modern'
  use 'lukas-reineke/indent-blankline.nvim'
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons'
    }
  }
  -- LSP
  use "hrsh7th/nvim-cmp" -- Autocompletion plugin
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-vsnip"
  use "hrsh7th/vim-vsnip"
  use "mhartington/formatter.nvim"
  use "neovim/nvim-lspconfig"
  use "glepnir/lspsaga.nvim"
  use "williamboman/nvim-lsp-installer"

  use 'junegunn/fzf'
  use 'junegunn/fzf.vim'

  if packer_bootstrap then
    require('packer').sync()
  end
end)

