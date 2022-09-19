vim.g.base16colorspace = 256

-- Leader
vim.g.mapleader = ';'

vim.opt.termguicolors = true
vim.opt.hidden = true
vim.cmd('set nopaste')
vim.opt.background = 'dark'

-- Identation
vim.opt.expandtab = true
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

--vsplit at right side
vim.opt.splitright = true
vim.opt.cursorline = true
vim.opt.number = true
vim.opt.relativenumber = true

-- command line completion
vim.cmd('set wildmode=longest:list,full')

vim.cmd('set whichwrap=b,s,h,l,<,>,[,]')

vim.opt.showmatch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.cmd('set inccommand=split')
vim.cmd('set mouse=a')

-- use native clipboard
vim.cmd('set clipboard^=unnamedplus')

vim.cmd('set nobackup')
vim.cmd('set noerrorbells')
vim.cmd('set noswapfile')

vim.opt.fileencoding = 'UTF-8'

vim.cmd('set signcolumn=yes')

vim.cmd('set completeopt-=preview')

vim.cmd('set foldmethod=syntax')
vim.cmd('set foldlevelstart=99')

vim.opt.autoindent = true
vim.opt.autoread = true
vim.opt.autowrite = true
vim.opt.backspace = 'indent,eol,start'
vim.opt.backupcopy = 'yes'
vim.opt.compatible = false
vim.opt.completeopt = "menu,menuone,noselect"
vim.opt.formatoptions = 'tcq'
vim.opt.hlsearch = true
vim.opt.list = true
vim.opt.wrap = true

vim.opt.shortmess = vim.opt.shortmess + 'c'
vim.opt.colorcolumn = '80'
vim.opt.incsearch = true
vim.opt.linebreak = true
vim.opt.showmode = false
vim.opt.laststatus = 2
vim.opt.guifont = 'JetBrains Mono'
vim.opt.tabstop = 2
vim.opt.title = true

vim.cmd('let g:gruvbox_material_background = "medium"')
vim.cmd('let g:gruvbox_material_better_performance = 1')

vim.cmd('set t_Co=256')
vim.cmd('syntax on')
--vim.cmd('colorscheme base16-default-dark')
-- vim.cmd('colorscheme base16-gruvbox-dark-pale')
vim.cmd('colorscheme gruvbox-material')
vim.cmd('filetype plugin indent on')
-- vim.cmd('highlight ColorColumn ctermbg=lightgrey guibg=lightgrey')


vim.g.cpp_member_highlight = true

