syntax enable
filetype plugin indent on

set showcmd	    " display incomplete commands
set showmode     " display mode you're in 

set backspace=indent,eol,start
set hidden

set wildmenu
set wildmode=list:longest

set ignorecase      " case-insensitive searching
set smartcase       " case-sensitive if expression contains a capital letter
set number           " show line number
set ruler           " show cursor position

set cursorline
set showmatch
set hlsearch
set incsearch


set softtabstop=2 

set tabstop=2     " (ts) width (in spaces) that a <tab> is displayed as
set expandtab     " (et) expand tabs to spaces (use :retab to redo entire file)
set shiftwidth=2  " (sw) width (in spaces) used in each step of autoindent (aswell as << and >>)