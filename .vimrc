set nocp
set number
set expandtab
set tabstop=2
set shiftwidth=2

call plug#begin()

Plug 'mattn/emmet-vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'

call plug#end() 

let g:snipMate = { 'snippet_version' : 1 }
