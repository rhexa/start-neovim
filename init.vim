lua require('plugins')
lua require('keybindings')
lua require('configs')

" default
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
set path+=**                " fuzzy finder
