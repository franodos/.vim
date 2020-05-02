" ================================
"         插件管理
"=================================
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
call plug#end()


"================================
"       自定义设置
"================================
set number
set clipboard=unnamed
set cursorline
set noswapfile

set softtabstop=4
set shiftwidth=4
set expandtab

set showtabline=2

set splitbelow
set splitright

" search
set hlsearch
set ignorecase
set incsearch
set smartcase

" filetype
filetype on
filetype indent on
filetype plugin on

syntax on
colorscheme darkblue

set ruler

set linebreak
set showcmd
set scrolloff=3

autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
autocmd BufWritePre * :%s/\s\+$//e

if executable("python")
    autocmd BufRead,BufNewFile *.py noremap <F5> :% w !python<Enter>
else
    autocmd BufRead,BufNewFile *.py noremap <F5> :echo "Don't hanve Python!"
endif

