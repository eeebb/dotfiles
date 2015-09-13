" preferences
syntax on
set shiftwidth=2
set autoindent
set expandtab
set tabstop=2
set softtabstop=2
set splitright
set splitbelow
set backspace=2
set hlsearch
set incsearch
set autoread
set noswapfile
set undodir='$HOME/.vim/.vimundo/'
set viewdir='$HOME/.vim/.vimview/'
set laststatus=2
set mouse=n
set mousefocus
set nu
set nobackup

" keymapping
nnoremap <silent><C-J> <C-W><C-J>
nnoremap <silent><C-K> <C-W><C-K>
nnoremap <silent><C-L> <C-W><C-L>
nnoremap <silent><C-H> <C-W><C-H>
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ackprg = 'ag --nogroup --nocolor --column'

" Vundle
set nocompatible
filetype off
set runtimepath+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'mhinz/vim-startify'
Plugin 'bling/vim-airline'
Plugin 'flazz/vim-colorschemes'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'szw/vim-maximizer'
Plugin 'rking/ag.vim'
Plugin 'groenewege/vim-less'
Plugin 'tpope/vim-fugitive'
Plugin 'tmhedberg/matchit'

call vundle#end()
filetype plugin indent on

" plugins settings
set t_Co=256
set term=xterm-256color
" color af
color koehler
" let g:airline_powerline_fonts = 1
" let g:airline_theme='ubaryd'
set timeoutlen=50
