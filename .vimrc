filetype plugin indent on
syntax on

set autoindent
set belloff=all
set cursorline
set encoding=UTF-8
set incsearch
set linebreak
set laststatus=2
set number
set noshowmode
set nocompatible
set relativenumber
set shiftwidth=2
set splitbelow
set splitright
set tabstop=2
set timeoutlen=1000 ttimeoutlen=0
set title
set t_Co=256

if (has("termguicolors"))
  set termguicolors
endif

inoremap jk <esc>
inoremap <esc> <Nop>

nmap <silent> ,/ :nohlsearch<CR>

let mapleader="'"

" Ctrl + n to open NERDTree
map <C-n> :NERDTreeToggle<CR>

nmap <leader>d <Plug>(ale_fix)

" Close NERDTree if we close the last tab
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" NERDTree starts up when we specify a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

vnoremap <c-t> :terminal ++rows=10<CR>
nnoremap <c-t> :terminal ++rows=10<CR>

call plug#begin('~/.vim/plugged')

Plug 'sainnhe/sonokai'
Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'dense-analysis/ale'
Plug 'ryanoasis/vim-devicons'

call plug#end()

let g:ale_fixers = {
  \ 'javascript': ['eslint']
  \ }

colorscheme sonokai

let g:lightline = {
\ 'colorscheme': 'sonokai',
\ 'active': {
\   'left': [ [ 'mode', 'paste' ],
\             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
\ },
\ 'component_function': {
\   'gitbranch': 'gitbranch#name'
\ },
\ }

let g:ale_linters = { 'javascript': ['eslint'] }
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'

let g:ale_fix_on_save = 1
