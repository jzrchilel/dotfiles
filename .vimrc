"          __     ______     ______     ______     ______
"         /\ \   /\  ___\   /\___  \   /\  ___\   /\  == \
"       _\_\ \  \ \  __\   \/_/  /__  \ \  __\   \ \  __<
"     /\_____\  \ \_____\   /\_____\  \ \_____\  \ \_\ \_\
"     \/_____/  \/_____/    /______/  \/_____/   \/_/  /_/
"
"     vim config of jezer <jezer.chilel@gmail.com>

filetype plugin indent on
syntax on

set autoindent
set belloff=all
set colorcolumn=110
highlight ColorColumn ctermbg=darkgrey
set cursorline
set encoding=UTF-8
set incsearch
set linebreak
set laststatus=2
set number
set noexpandtab
set noshowmode
set nocompatible
set relativenumber
set shiftwidth=4
set splitbelow
set splitright
set softtabstop=4
set tabstop=4
set timeoutlen=1000 ttimeoutlen=0
set title
set t_Co=256
set guifont=DroidSansMono\ Nerd\ Font\ 11

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

autocmd filetype cpp nnoremap <leader>r :w<bar>term ++rows=10 ++shell g++ %:p -std=c++11 -o %:p:r && %:p:r<CR>

call plug#begin('~/.vim/plugged')

Plug 'sainnhe/sonokai'
Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'dense-analysis/ale'
Plug 'ryanoasis/vim-devicons'
Plug 'tmsvg/pear-tree'
Plug 'ycm-core/YouCompleteMe'
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
Plug 'Yggdroot/indentLine'
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
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'

let g:ale_fix_on_save = 1

let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/YouCompleteMe/ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_seed_identifiers_with_syntax = 1

let g:ycm_key_list_select_completion = []
let g:ycm_key_list_previous_completion = []

nnoremap <F1> :pclose<CR>:silent YcmCompleter GetDoc<CR>
nnoremap <S-F1> :pclose<CR>
nnoremap <C-F1> :YcmCompleter GetType<CR>
nnoremap <F9> :YcmCompleter GoTo<CR>
nnoremap <S-F9> :YcmCompleter GoToReferences<CR>
nnoremap <F10> :YcmCompleter FixIt<CR>

let g:ycm_use_clangd = 1
