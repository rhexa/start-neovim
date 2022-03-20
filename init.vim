set number relativenumber

filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

set splitbelow
set splitright

set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive


" keybindings
tnoremap <esc> <c-\><c-n>


" terminal config
autocmd TermOpen * setlocal nonumber norelativenumber
autocmd TermOpen * startinsert
