local install_path = vim.fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    vim.cmd("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
end

return require"packer".startup(function(use)
  use 'morhetz/gruvbox'
  use {
    'nvim-lualine/lualine.nvim',
    required = {
      'kyazdani42/nvim-web-devicons',
      opt = true
    }
  }
  use 'NLKNguyen/papercolor-theme'
  -- use 'preservim/nerdtree'
  -- use 'kyazdani42/nvim-web-devicons'
	-- Language Support
	use {"nvim-treesitter/nvim-treesitter"}
	use {"nvim-treesitter/playground"}
	use {"p00f/nvim-ts-rainbow"}
	use {'windwp/nvim-ts-autotag'}
	use 'bfrg/vim-cpp-modern'
  use "lukas-reineke/indent-blankline.nvim"
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    config = function() require'nvim-tree'.setup {} end
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
end)
