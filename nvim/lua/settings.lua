vim.opt.number = true
vim.opt.shortmess = vim.opt.shortmess + 'c'
vim.opt.cursorline = true
vim.opt.incsearch = true
vim.opt.linebreak = true
vim.opt.laststatus = 2
vim.opt.relativenumber = true
vim.opt.guifont = 'JetBrains Mono'
vim.opt.tabstop = 2
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.title = true
vim.opt.hidden = true
vim.opt.background = 'dark'
vim.opt.termguicolors = true

vim.cmd('highlight clear SignColumn')
vim.cmd('colorscheme gruvbox')

vim.g.cpp_member_highlight = true
vim.g.mapleader = ';'

vim.cmd('command! -bang -nargs=? -complete=dir Files call fzf#vim#files(<q-args>, {"options": ["--preview", "batcat {}"]}, <bang>0)')

vim.cmd("command! -bang -nargs=? -complete=dir GFiles call fzf#vim#gitfiles(<q-args>, {'options': ['--preview', 'batcat {}']}, <bang>0)")
