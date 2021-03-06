" ================================
" Vundle 
" ================================

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
" List Plugins here
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-commentary'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-markdown'
"Plugin 'bling/vim-airline'

call vundle#end()
filetype plugin indent on

" ================================
" Mappings 
" ================================

let mapleader = ","

" Edit another file in the same directory as the current file
" uses expression to extract path from current file's path
map <Leader>e :e <C-R>=escape(expand("%:p:h"),' ') . '/'<CR>
map <Leader>s :split <C-R>=escape(expand("%:p:h"), ' ') . '/'<CR>
map <Leader>v :vnew <C-R>=escape(expand("%:p:h"), ' ') . '/'<CR>
nmap <Leader>vr :sp $MYVIMRC<CR>
nmap <Leader>so :source $MYVIMRC<CR>
nmap <Leader>ne :NERDTree<CR>

nmap 0 ^ " Better go to start of line, taking into account first non whitespace character

" Exit insert mode and save immediately
map <C-s> <esc>:w<CR>
imap <C-s> <esc>:w<CR>

" Allow navigation through soft wrapped text
nmap k gk
nmap j gj

" After an opening '{' drop to next line and tab over
imap <C-c> <CR><Tab>

" ================================
" Settings
" ================================

set t_Co=256
syntax on
set background=dark
colorscheme Tomorrow-Night
set number
set ruler
set nowrap
set autoindent
set history=500
set directory=~/.tmp " Don't clutter up my dirs with swp and tmp files
set noincsearch
set ignorecase smartcase
set laststatus=2 " Always show status line.
set expandtab
set shiftwidth=2
set softtabstop=2
set colorcolumn=80
set showcmd

" ================================
" vim-airline
" ================================
let g:airline_powerline_fonts = 1

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher

if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif
