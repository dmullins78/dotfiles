set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'jeetsukumaran/vim-buffergator'

call vundle#end()

filetype plugin indent on
syntax on
set number
set relativenumber

let mapleader=","

set tabstop=2           " 2 spaces for a tab - used when vim opens a file having <tab>s in it
set shiftwidth=2        " 2 spaces for autoindenting
set softtabstop=2       " 2 spaces inserted for <tab> when editing a file, also # removed by backspace
set expandtab           " expand tabs to spaces (overloadable by file type)

set clipboard=unnamed

"Fugitive
map <leader>gs :Gstatus<CR>
map <leader>gc :Gcommit<CR>

"NerdTree
map <leader>n :NERDTreeToggle<CR>
map <leader>ff :NERDTreeFind<CR>

"Close the window if NerdTree is the only open buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

"Window navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>

".......Open files, directories and bookmarks....................NERDTree-o
"go......Open selected file, but leave cursor in the NERDTree.....NERDTree-go
"t.......Open selected node/bookmark in a new tab.................NERDTree-t
"T.......Same as 't' but keep the focus on the current tab........NERDTree-T
"i.......Open selected file in a split window.....................NERDTree-i
"gi......Same as i, but leave the cursor on the NERDTree..........NERDTree-gi
"s.......Open selected file in a new vsplit.......................NERDTree-s
"gs......Same as s, but leave the cursor on the NERDTree..........NERDTree-gs
"O.......Recursively open the selected directory..................NERDTree-O
"x.......Close the current nodes parent...........................NERDTree-x
"X.......Recursively close all children of the current node.......NERDTree-X
"e.......Edit the current dir.....................................NERDTree-e
