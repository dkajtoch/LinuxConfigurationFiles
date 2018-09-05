" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc  source %


set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'vim-syntastic/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" set the background theme to dark
" set background = "dark"

" Call the theme one
" set colorscheme = "one"(one is the name of color scheme)

" Don't forget set the airline theme as well.
let g:airline_theme = 'wombat'

" This line enables the true color support.
" let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Note, the above line is ignored in Neovim 0.1.5 above, use this line instead.
" set termguicolors

set number
set cursorline
set wildmenu
set showmatch
set hls
set nrformats=
set tabstop=3
set shiftwidth=3
set softtabstop=3
set shiftround
set expandtab

let g:Powerline_symbols = 'fancy'

let g:syntastic_cpp_checkers = ['gcc']
let g:syntastic_cpp_compiler = 'gcc'
let g:syntastic_cpp_compiler_options = '-std=c++14'

let g:syntastic_fortran_compiler = 'gfortran'
let g:syntastic_fortran_compiler_options = '-std=f2008'

" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation

" Better copy & paste
" " When you want to paste large blocks of code into vim, press F2 before you
" " paste. At the bottom you should see ``-- INSERT (paste) --``.

set pastetoggle=<F2>

" set colorcolumn=80
" highlight ColorColumn ctermbg=233

set history=700
set undolevels=700

" Enable syntax highlighting
" You need to reload this file for the change to apply
filetype off
filetype plugin indent on
syntax on

" set t_Co=256
" color wombat256mod
