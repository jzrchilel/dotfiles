set t_Co=256
set encoding=UTF-8
set hls
set number
set copyindent
set preserveindent
set softtabstop=0
set shiftwidth=2
set tabstop=2
set belloff=all
set timeoutlen=1000 ttimeoutlen=0
set rnu
syn on
set background=dark

" Delete line in insert mode
imap <C-d> <esc>ddi

" Delete one chracter in insert mode
imap <C-x> <esc>xi

" Delete one character backwards in insert mode
imap <C-X> <left><del>

" Undo changes in insert mode
imap <C-u> <esc>ui

" Ctrl + n to open NERDTree
map <C-n> :NERDTreeToggle<CR>

" let mapleader = "-"

" nnoremap <leader>c ddO
" inoremap <leader>d <esc>ddi

" Open NERDTree when file is specify
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Close NERDTree if we close the last tab
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" NERDTree starts up when we specify a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

nnoremap <expr> <C-p> (len(system('git rev-parse')) ? ':Files' : ':GFiles --exclude-standard --others --cached')."\<cr>"

" Close curly braces and brackets automatically
inoremap {<cr> {<cr>}<c-o>O
inoremap [ []<left>
inoremap ( ()

call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'jreybert/vimagit'
Plug 'edkolev/tmuxline.vim'
Plug 'itchyny/vim-gitbranch'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'leshill/vim-json'
Plug 'jelera/vim-javascript-syntax'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'joshdick/onedark.vim'
Plug 'dense-analysis/ale'
Plug 'matze/vim-move'

call plug#end()

"if (has("termguicolors"))
" set termguicolors
" endif

colorscheme onedark 

set laststatus=2
set noshowmode

let g:move_key_modifier = 'C'

let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ }

" hi Normal guibg=NONE ctermbg=NONE

