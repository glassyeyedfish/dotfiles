syntax on

filetype plugin indent on

" Sets
set path+=**
set backspace=2
set history=500
set showmode
set showcmd
set autoread
set hidden
set updatetime=300

set laststatus=2
set noshowmode

set ruler
set wildmenu
set number
set relativenumber
set noerrorbells
set visualbell
set title

set noswapfile
set nobackup
set nowritebackup
set undodir=~/.config/nvim/undodir
set undofile

set autoindent
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set nowrap

set incsearch
set nohlsearch
set ignorecase
set smartcase

set encoding=utf-8
set scrolloff=8
set sidescrolloff=16
set shell=bash

" Vim-Plugged
call plug#begin('~/.config/nvim/plugged')

Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/nerdtree'
Plug 'mbbill/undotree'

call plug#end()

" PLUGIN CONFIG
let NERDTreeShowHidden=1

" Remaps
let mapleader=" "

inoremap jk <ESC>

nnoremap <Leader><Left> :tabp<CR>
nnoremap <Leader><Right> :tabn<CR>
nnoremap <Leader><Up> :tabnew<CR>
nnoremap <Leader><Down> :tabclose<CR>

nnoremap <Leader>m :!make<CR>

nnoremap <Leader>n :NERDTreeToggle<CR>

nnoremap <Leader>u :UndotreeToggle<CR>:UndotreeFocus<CR>

nnoremap <Leader>s :wa<CR>:mksession! ~\.vim\sessions\

nnoremap <Leader>w :w<CR>

nnoremap <Leader>q :q<CR>

" Auto-Commands
autocmd FileType sh map <buffer> <F10> :w<CR>:!cls<CR><CR>:!bash %<CR>

autocmd FileType python map <buffer> <F10> :w<CR>:!cls<CR><CR>:!python3 %<CR>

autocmd FileType c map <buffer> <F9> :w<CR>:!cls<CR><CR>:!gcc % <CR>
autocmd FileType c map <buffer> <F10> :w<CR>:!cls<CR><CR>:!./a.out <CR>

autocmd FileType rust map <buffer> <F9> :w<CR>:!cls<CR><CR>:!rustc % -o a.out <CR>
autocmd FileType rust map <buffer> <F10> :w<CR>:!cls<CR><CR>:!./a.out <CR>

" Colors
set background=dark
colorscheme simple
hi User1 ctermfg=15 ctermbg=0
hi User2 ctermfg=0  ctermbg=15

" Statusline
let g:currentmode={
       \ 'n'      : 'NOR',
       \ 'v'      : 'VIS',
       \ 'V'      : 'V·L',
       \ "\<C-V>" : 'V·B',
       \ 'i'      : 'INS',
       \ 'R'      : 'REP',
       \ 'Rv'     : 'V·R',
       \ 'c'      : 'CMD',
       \}

set statusline=
set statusline+=%2*
set statusline+=\ %n\ :
set statusline+=\ %{toupper(g:currentmode[mode()])}
set statusline+=\ %1*
set statusline+=\ %m
set statusline+=\ %f
set statusline+=\ %r
set statusline+=%=
set statusline+=\ %y
set statusline+=\ %2*
set statusline+=\ %c:%p%%
set statusline+=\ %1* 
