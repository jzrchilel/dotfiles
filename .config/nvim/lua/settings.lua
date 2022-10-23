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

-- vim.cmd('set signcolumn=yes')

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

vim.cmd('set t_Co=256')
vim.cmd('syntax on')
-- vim.cmd('let g:gruvbox_contrast_dark="hard"')
-- vim.cmd('colorscheme base16-default-dark')
-- vim.cmd('colorscheme gruvbox')
vim.cmd('colorscheme gruvbox-material')
vim.cmd('filetype plugin indent on')
vim.cmd('highlight Normal guibg=none')
vim.cmd('highlight NonText guibg=none')
vim.cmd('highlight CursorLine guibg=#3E3D32')
vim.cmd('highlight Cursor guibg=#A6E22E;')
vim.cmd('highlight Visual guifg=#000000 guibg=#FD971F')
vim.cmd('autocmd InsertEnter * highlight  CursorLine guibg=#323D3E')
vim.cmd('autocmd InsertEnter * highlight  Cursor guibg=#00AAFF;')
vim.cmd('autocmd InsertLeave * highlight  CursorLine guibg=#3E3D32')
vim.cmd('autocmd InsertLeave * highlight  Cursor guibg=#A6E22E;')

vim.g.cpp_member_highlight = true

