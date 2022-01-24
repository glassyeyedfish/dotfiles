syntax on

filetype plugin indent on

" =========================================================================== "
" Sets
" =========================================================================== "

set path+=**
set backspace=2
set history=500
set showmode
set showcmd
set autoread
set hidden
set updatetime=300
set guicursor=i:block

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

let mapleader=" "

" =========================================================================== "
" Vim-Plugged
" =========================================================================== "

call plug#begin('~/.config/nvim/plugged')

Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/nerdtree'
Plug 'mbbill/undotree'

Plug 'MarcWeber/vim-addon-mw-utils' "Dependencie of below
Plug 'tomtom/tlib_vim' "Dependencie of below
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'

Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

"Plug 'scrooloose/nerdcommenter'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'sirver/ultisnips'
"Plug 'honza/vim-snippets'

call plug#end()

" =========================================================================== "
" PLUGIN CONFIG
" =========================================================================== "

" nerdtree
let NERDTreeShowHidden=1
nnoremap <Leader>n :NERDTreeToggle<CR>

" snipmate
let g:snipMate = { 'snippet_version' : 1 }
imap <A-n> <Plug>snipMateNextOrTrigger
smap <A-n> <Plug>snipMateNextOrTrigger
imap <A-N> <Plug>snipMateBack
smap <A-N> <Plug>snipMateBack

" goyo.vim
nnoremap <Leader>g :Goyo<CR>

" limelight.vim
let g:limelight_conceal_ctermfg = 8
nnoremap <Leader>l :Limelight!!<CR>

" =========================================================================== "
" REMAPS
" =========================================================================== "

inoremap jk <ESC>

nnoremap <Leader><Left> :tabp<CR>
nnoremap <Leader><Right> :tabn<CR>
nnoremap <Leader><Up> :tabnew<CR>
nnoremap <Leader><Down> :tabclose<CR>

nnoremap <Leader>b :!$HOME/Scripts/bin/build.sh %<CR>

nnoremap <Leader>mb :make build<CR>
nnoremap <Leader>mc :make clean<CR>
nnoremap <Leader>mr :make run<CR>

nnoremap <Leader>s :so ~/.config/nvim/init.vim<CR>

nnoremap <Leader>u :UndotreeToggle<CR>:UndotreeFocus<CR>

" =========================================================================== "
" Colors
" =========================================================================== "

set background=dark
colorscheme simple

" =========================================================================== "
" Statusline
" =========================================================================== "

hi User1 ctermfg=15 ctermbg=0
hi User2 ctermfg=0  ctermbg=15
hi NormalColor ctermfg=0  ctermbg=14 cterm=bold
hi InsertColor ctermfg=0  ctermbg=10 cterm=bold
hi VisualColor ctermfg=0  ctermbg=13 cterm=bold
hi ReplacColor ctermfg=0  ctermbg=9  cterm=bold
hi ComandColor ctermfg=0  ctermbg=11 cterm=bold

let g:currentmode={
      \ 'n'      : 'n',
      \ 'v'      : 'v',
      \ 'V'      : 'vl',
      \ "\<C-V>" : 'vb',
      \ 'i'      : 'i',
      \ 'R'      : 'r',
      \ 'Rv'     : 'rv',
      \ 'c'      : 'c',
      \ 't'      : 'f',
      \}

set statusline=
set statusline+=%#NormalColor#%{(g:currentmode[mode()]=='n')?'\ \ NORMAL\ ':''}
set statusline+=%#InsertColor#%{(g:currentmode[mode()]=='i')?'\ \ INSERT\ ':''}
set statusline+=%#ReplacColor#%{(g:currentmode[mode()]=='r')?'\ \ REPLACE\ ':''}
set statusline+=%#ReplacColor#%{(g:currentmode[mode()]=='rv')?'\ \ V·REP\ ':''}
set statusline+=%#VisualColor#%{(g:currentmode[mode()]=='v')?'\ \ VISUAL\ ':''}
set statusline+=%#VisualColor#%{(g:currentmode[mode()]=='vl')?'\ \ V·LINE\ ':''}
set statusline+=%#VisualColor#%{(g:currentmode[mode()]=='vb')?'\ \ V·BLOCK\ ':''}
set statusline+=%#ComandColor#%{(g:currentmode[mode()]=='c')?'\ \ COMMAND\ ':''}
set statusline+=%#ComandColor#%{(g:currentmode[mode()]=='f')?'\ \ FIND\ ':''}
set statusline+=%2*\ %n
set statusline+=\ %1*
set statusline+=\ %f
set statusline+=\ %m
set statusline+=\ %r
set statusline+=%=
set statusline+=\ %y
set statusline+=\ %2*
set statusline+=\ %c:%p%%
set statusline+=\ %1* 

