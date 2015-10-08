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

call vundle#end()

filetype plugin indent on
syntax on
set number
set relativenumber

let mapleader=","

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
