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
set noswapfile
set cursorline
set cc=79
set list
set listchars=tab:▸\ ,eol:¬


set mouse=a " Mouse support for everything

let mapleader=","

set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

let NERDTreeIgnore = ['\.pyc$']
let NERDTreeShowBookmarks=1


augroup group
    autocmd!
    au FileChangedShell * echo "Warning: File changed on disk"
augroup END

" PLUGINS
" Vundle config below, don't mess with it 
" (copied from https://github.com/gmarik/vundlenn)

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My bundles here:
"
" original repos on GitHub
Bundle 'davidhalter/jedi-vim'
Bundle 'flazz/vim-colorschemes'
Bundle 'kien/ctrlp.vim'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc
Bundle 'msanders/snipmate.vim'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
" Powerline setup
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2
if ! has('gui_running')
    set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
endif

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


" COLORS
set t_Co=256
colorscheme solarized
set background=light

" CUSTOM MAPINGS
noremap <F5> :!python2 %<CR>
noremap <Leader>n :NERDTreeToggle<CR>
noremap <Leader>. :NERDTreeFromBookmark dotfiles<CR>

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

vnoremap <Leader>s :sort<CR>

