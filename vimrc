syntax enable " Syntax highlighting
filetype indent plugin on

set modeline
set number " Numbers of lines on left side
set hlsearch " Higlighting of search results
set incsearch " Incremental search
set autoindent 
set ignorecase
set encoding=utf-8
set fileencoding=utf-8
set smartcase
set gdefault
set showmatch
set guifont=PragmataPro


colorscheme vividchalk " My fav colorsheme, vividchalk from github
set background=dark " Setting for dark background, without it colors are weird

set mouse=a " Mouse support for everything

map <F5> :!python2 %<CR>
map <Leader>n :NERDTreeToggle<CR>

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>


let NERDTreeIgnore = ['\.pyc$']
" Vundle config below, don't mess with it (copied from https://github.com/gmarik/vundlenn)

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My bundles here:
"
" original repos on GitHub
Bundle 'scrooloose/nerdtree'
Bundle 'msanders/snipmate.vim'
Bundle 'tpope/vim-fugitive'

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.
