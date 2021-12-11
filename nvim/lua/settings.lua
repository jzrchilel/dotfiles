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

vim.cmd(string.format('colorscheme gruvbox'))

vim.g.gruvbox_italic = 1
vim.g.gruvbox_material_background = 'hard'
vim.g.gruvbox_material_enable_italic = 1

