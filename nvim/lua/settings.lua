vim.opt.autoindent = true
vim.opt.autoread = true
vim.opt.autowrite = true
vim.opt.backspace = 'indent,eol,start'
vim.opt.backupcopy = 'yes'
vim.opt.compatible = false
vim.opt.completeopt = "menu,menuone,noselect"
vim.opt.fileencoding = 'UTF-8'
vim.opt.formatoptions = 'tcq'
vim.opt.hlsearch = true
vim.opt.list = true
vim.opt.wrap = true

vim.opt.number = true
vim.opt.shortmess = vim.opt.shortmess + 'c'
vim.opt.cursorline = true
vim.opt.colorcolumn = '80'
vim.opt.incsearch = true
vim.opt.linebreak = true
vim.opt.showmode = false
vim.opt.laststatus = 2
vim.opt.relativenumber = true
vim.opt.guifont = 'JetBrains Mono'
vim.opt.tabstop = 2
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.title = true
vim.opt.hidden = true
vim.opt.termguicolors = true
-- vim.opt.background = 'dark'

vim.cmd('set t_Co=256')
vim.cmd('syntax on')
vim.g.base16colorspace = 256
vim.cmd('colorscheme base16-default-dark')
-- vim.cmd('colorscheme base16-gruvbox-dark-pale')
vim.cmd('filetype plugin indent on')
-- vim.cmd('highlight ColorColumn ctermbg=lightgrey guibg=lightgrey')


vim.g.cpp_member_highlight = true
vim.g.mapleader = ';'
