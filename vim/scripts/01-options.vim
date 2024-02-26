""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 01-options.vim - Gestion des Options
" References:
" - https://github.com/SebastianMuskalla/ModelessVim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" General {

" Disable Vi-compatibility
if &compatible
  set nocompatible
endif

" Syntax highlighting according to the value of the 'filetype' option
syntax on

" Enhance command-line completion
set wildmenu

" Show partial command in the last line of the screen
set showcmd

" Highlight searches
set hlsearch

" Disable modeline
set nomodeline

" Ignore case in search patterns, except if the search pattern contains upper
" case characters
set ignorecase
set smartcase

" Always display the status line
set laststatus=2

" Use a visual bell instead of beeping
set visualbell

" Number of screen lines to use for the command-line
set cmdheight=1

" Highlight the text line of the cursor
set cursorline

" Print the line number in front of each line
set number

" Show the line number relative to the line with the cursor in front of each
" line
set relativenumber

" Minimal number of columns to use for the line number
set numberwidth=4

" }

" Indentation {

" Enable filetype detection
filetype on

" Enable loading the plugin files
filetype plugin on

" Enable loading the indent file
filetype indent on

" In Insert mode: Use the appropriate number of spaces to insert a <Tab>
set expandtab

" Number of spaces to use for each step of (auto)indent
set shiftwidth=2

" Number of spaces that a <Tab> in the file counts for
set tabstop=2

" Influences the working of <BS>, <Del>, CTRL-W and CTRL-U
set backspace=indent,eol,start

" Copy indent from current line when starting a new line
set autoindent

" Lines longer than the width of the window will wrap and displaying continues
" on the next line
set wrap

" }
