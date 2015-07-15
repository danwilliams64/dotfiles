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

nmap 0 ^ " Better go to start of line, taking into account first non whitespace character

" Exit insert mode and save immediately
map <C-s> <esc>:w<CR>
imap <C-s> <esc>:w<CR>

" Allow navigation through soft wrapped text
nmap k gk
nmap j gj

" ================================
" Settings
" ================================

set number
set ruler
set nowrap
set autoindent
set history=500
set directory=~/.tmp " Don't clutter up my dirs with swp and tmp files
set noincsearch
set ignorecase smartcase
set laststatus=2 " Always show status line.