filetype off
call pathogen#runtime_append_all_bundles()
filetype plugin indent on

set nocompatible

set modelines=0

set ignorecase smartcase
set number

" tab options
set expandtab
set shiftwidth=4
set softtabstop=4

set smarttab autoindent

" paste options
nnoremap <F5> :set invpaste paste?<Enter>
imap <F5> <C-O><F5>
set pastetoggle=<F5>

" shortcuts for working with multiple files
nnoremap <C-N> :next<Enter>
nnoremap <C-P> :prev<Enter>
set confirm

set ruler
syntax enable
set background=dark
colorscheme solarized

set number
set undofile
set encoding=utf-8

