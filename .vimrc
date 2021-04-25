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
noremap <leader>gd <Plug>(coc-definition)
noremap <leader>n :NERDTreeToggle<CR>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

""" TAB COC
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

""" PLUG SETUP
call plug#begin("~/.vim/plugged")
Plug 'preservim/nerdtree'
Plug 'roxma/vim-tmux-clipboard'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tomasiser/vim-code-dark'
Plug 'mattn/emmet-vim'
call plug#end()

""" COLORSCHEME 
colorscheme codedark

