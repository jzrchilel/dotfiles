local install_path = vim.fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require"packer".startup(function(use)
  use {
    'nvim-lualine/lualine.nvim',
    required = {
      'kyazdani42/nvim-web-devicons',
      opt = true
    }
  }
  use 'SmiteshP/nvim-gps'
  use 'NLKNguyen/papercolor-theme'
  -- use 'preservim/nerdtree'
  -- use 'kyazdani42/nvim-web-devicons'
  use 'jiangmiao/auto-pairs'
	-- Language Support
  use {
    'nvim-treesitter/nvim-treesitter',
    before = "neorg",
    run = ':TSUpdate'
  }
  use 'ellisonleao/carbon-now.nvim'
	use 'nvim-treesitter/playground'
  use 'm-demare/hlargs.nvim'
  use 'noib3/nvim-cokeline'
  use 'numToStr/Comment.nvim'
  -- Themes
  use 'morhetz/gruvbox'
  use 'sainnhe/gruvbox-material'
  use 'sainnhe/everforest'
  use 'sainnhe/sonokai'
	use 'p00f/nvim-ts-rainbow'
  use 'folke/tokyonight.nvim'
  use 'RRethy/nvim-base16'
  -- use 'chriskempson/base16-vim'
	use 'windwp/nvim-ts-autotag'
	use 'bfrg/vim-cpp-modern'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'kyazdani42/nvim-tree.lua'
  use 'kyazdani42/nvim-web-devicons'
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

