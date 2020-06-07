set nocompatible
set t_Co=256
set encoding=UTF-8
syntax on
set number
"set copyindent
"set preserveindent
" set softtabstop=2
" set shiftwidth=2
" set tabstop=1
set incsearch
set autoindent
set cursorline
set nowrap
set linebreak
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set belloff=all
set timeoutlen=1000 ttimeoutlen=0
set rnu
set title
set background=dark
set splitbelow
set splitright
set autoindent
set guifont=Fira-Code-Regular

if (has("termguicolors"))
	set termguicolors
endif

" Delete line in insert mode
" imap <C-d> <esc>ddi

" Delete one chracter in insert mode
" imap <C-x> <esc>xi

" Delete one character backwards in insert mode
" inoremap <C-X> <left><del>

" Undo changes in insert mode
" inoremap <C-u> <esc>ui

" Ctrl + n to open NERDTree
map <C-n> :NERDTreeToggle<CR>

" Close NERDTree if we close the last tab
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" NERDTree starts up when we specify a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

nnoremap <expr> ; (len(system('git rev-parse')) ? ':Files' : ':GFiles --exclude-standard --others --cached')."\<cr>"

" Close curly braces and brackets automatically
inoremap {<cr> {<cr>}<c-o>O
inoremap [ []<left>
inoremap ( ()

" Change key to exit insert mode
inoremap jk <esc>
inoremap <esc> <Nop>

noremap! <Del> <Nop>
" noremap! <BS> <Nop>

" Clear previous highlighted text
nmap <silent> ,/ :nohlsearch<CR>

map <C-J> <C-W><C-J>
map <C-K> <C-W><C-K>
map <C-L> <C-W><C-L>
map <C-H> <C-W><C-H>

" Move visual selection
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'jreybert/vimagit'
Plug 'edkolev/tmuxline.vim'
Plug 'itchyny/vim-gitbranch'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'matze/vim-move'
Plug 'sheerun/vim-polyglot'
Plug 'joshdick/onedark.vim'
Plug 'dense-analysis/ale'
Plug 'morhetz/gruvbox'

call plug#end()

let g:gruvbox_italic=1
let g:gruvbox_bold=1
colorscheme gruvbox 

set laststatus=2
set noshowmode

let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ }

let g:fzf_colors =
			\ { 'fg':      ['fg', 'Normal'],
 			\ 'bg':      ['bg', 'Normal'],
  		\ 'hl':      ['fg', 'Comment'],
  		\ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
 		 	\ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  		\ 'hl+':     ['fg', 'Statement'],
  		\ 'info':    ['fg', 'PreProc'],
  		\ 'border':  ['fg', 'Ignore'],
  		\ 'prompt':  ['fg', 'Conditional'],
  		\ 'pointer': ['fg', 'Exception'],
  		\ 'marker':  ['fg', 'Keyword'],
  		\ 'spinner': ['fg', 'Label'],
  		\ 'header':  ['fg', 'Comment'] }

let g:fzf_history_dir = '~/.local/share/fzf-history'
let g:fzf_commits_log_options = '--graph --color=always --format="%C()auto)%h%d %s %C()black)%C()bold)%cr"'

let g:move_key_modifier = 'N'

let g:NERDTreeStatusLine = -1
autocmd BufWritePre * :%s/\s+$//e
