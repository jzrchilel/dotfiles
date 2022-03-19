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
vim.opt.background = 'dark'

-- vim.g.everforest_background = 'hard'
-- vim.g.gruvbox_material_background = 'hard'
-- vim.g.gruvbox_material_enable_bold = true 
-- vim.g.gruvbox_material_enable_italic = true 
-- vim.g.gruvbox_material_transparent_background = true 
-- vim.g.gruvbox_material_visual = 'red background' 
-- vim.g.gruvbox_material_statusline_style = 'original' 
-- vim.cmd('colorscheme sonokai')
-- vim.cmd('colorscheme gruvbox-material')
vim.g.tokyonight_style = "night"
vim.g.tokyonight_italic_functions = true
vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }
vim.g.tokyonight_colors = { hint = "orange", error = "#ff0000" }

vim.cmd('let ayucolor="mirage"')
vim.cmd('colorscheme tokyonight')
vim.cmd('set t_ut=')

vim.g.cpp_member_highlight = true
vim.g.mapleader = ';'

vim.cmd('command! -bang -nargs=? -complete=dir Files call fzf#vim#files(<q-args>, {"options": ["--preview", "batcat {}"]}, <bang>0)')

vim.cmd("command! -bang -nargs=? -complete=dir GFiles call fzf#vim#gitfiles(<q-args>, {'options': ['--preview', 'batcat {}']}, <bang>0)")
