""" BASICS
syntax on
set number
set ruler
set tabstop=4
set shiftwidth=4
set expandtab
set mouse=a
set relativenumber
set clipboard+=unnamedplus

""" REMAP
let mapleader = ","
noremap <leader>w :w<cr>
noremap <leader>wq :x<cr>
noremap <leader>gd <Plug>(coc-definition)
noremap <leader>n :NERDTreeToggle<CR>

""" PLUG SETUP
call plug#begin("~/.vim/plugged")
Plug 'tomasiser/vim-code-dark'
call plug#end()

""" COLORSCHEME 
colorscheme codedark

