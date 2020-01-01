" Ryan Hassing
" Neovim init.vim
" December 2019

" Plugins
call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'tpope/vim-commentary'
Plug 'dense-analysis/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'

call plug#end()

" General
" TODO organize better
filetype plugin indent on
set nocompatible
set visualbell
set encoding=utf-8
set nobackup
set nowritebackup
set backspace=indent,eol,start

" Appearance
syntax on
color gruvbox
set ruler
set relativenumber
set cmdheight=2

" Tabs
set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab

" ALE
let g:ale_linters = {
\ 'python': ['flake8', 'pyls']
\}
let g:ale_fixers = {
\	'*': ['remove_trailing_lines', 'trim_whitespace'],
\	'python': ['autopep8'],
\}
let g:ale_python_autopep8_options = '--aggressive --aggressive'
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
set completeopt=menu,menuone,preview,noselect,noinsert " Autocomplete settings
inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" : "\<TAB>" " Tab to cycle through completions

" Airline
let g:airline_section_z = '%3p | %l:%c'

" Shortcuts
" TODO build and run command
let mapleader = ","
inoremap jj <ESC>
nnoremap <leader>w :w<CR>
