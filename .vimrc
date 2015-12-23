set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/mru.vim'
"Plugin 'scrooloose/syntastic'
"Plugin 'bling/vim-airline'
"Plugin 'ervandew/supertab'
"Plugin 'tpope/vim-ragtag'
"Plugin 'tpope/vim-markdown'
"Plugin 'tpope/vim-liquid'
"Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-fugitive'
"Plugin 'tpope/vim-rails'
"Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'vim-scripts/matchit.zip'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'Raimondi/delimitMate'
"Plugin 'hail2u/vim-css3-syntax'
"Plugin 'skammer/vim-css-color'
"Plugin 'Shougo/unite.vim'
Plugin 'vim-scripts/vimwiki'
"Plugin 'vim-scripts/groovyindent'
""Plugin 'Shougo/neocomplete.vim'
""Plugin 'Shougo/neosnippet.vim'
"Plugin 'Shougo/context_filetype.vim'
"Plugin 'Yggdroot/indentLine'
"Plugin 'tpope/vim-fireplace'
"Plugin 'tpope/vim-classpath'
"Plugin 'guns/vim-clojure-static'
"Plugin 'vim-scripts/paredit.vim'
Plugin 'majutsushi/tagbar'
Plugin 'mileszs/ack.vim'
"Plugin 'tpope/vim-vinegar'
"Plugin 'terryma/vim-multiple-cursors'
"Plugin 'lukaszb/vim-web-indent'
Plugin 'Valloric/YouCompleteMe'
Plugin 'klen/python-mode'
Plugin 'SirVer/ultisnips'
"Plugin 'honza/vim-snippets'
Plugin 'cakebaker/scss-syntax.vim'
""Plugin 'wincent/command-t'
"Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdcommenter'
"Plugin 'docunext/closetag.vim'
"Plugin 'gcmt/wildfire.vim'
"Plugin 'tpope/vim-abolish'
"Plugin 'vim-scripts/YankRing.vim'
"Plugin 'pangloss/vim-javascript'
"Plugin 'othree/javascript-libraries-syntax.vim'
"Plugin 'matthewsimo/angular-vim-snippets'
Plugin 'kien/ctrlp.vim'
""Plugin 'derekwyatt/vim-scala' 
"Plugin 'rking/ag.vim'
"Plugin 'othree/html5-syntax.vim'
Plugin 'othree/html5.vim'
"Plugin 'aklt/plantuml-syntax'
Plugin 'davidoc/taskpaper.vim'
Plugin 'derekwyatt/vim-scala'

call vundle#end()
filetype plugin indent on

let mapleader=','
let g:mapleader=','
let maplocalleader=','

set guifont=Menlo:h14

set encoding=utf-8
set fencs=ucs-bom,utf-8,default,chinese
if has("win32")
    "set fenc=chinese
    set fenc=utf-8
else
    set fenc=utf-8
endif
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
language messages zh_CN.UTF-8

syntax on

if has('gui_running')
    set guioptions-=T
    "set guioptions-=m
    set guioptions-=r
    set background=light
    "colors solarized
endif

set nobackup
set expandtab
set shiftwidth=4
set smarttab
set tabstop=4
set softtabstop=4
set number
set numberwidth=1
set shiftround
set copyindent
set smartcase
autocmd BufEnter * silent! lcd %:p:h
set autowrite
set autoread
set backspace=2
set noswapfile
set hlsearch

autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType scss setlocal shiftwidth=2 tabstop=2

set wildignore=*.0,*~,*.pyc
set wildignore+=*/.git/*,*/.svn/*,*/target/*,*/out/*,*/build/*

"***********"
"Key bindings"


"let g:UltiSnipsExpandTrigger="<c-j>"
"let g:UltiSnipsJumpForwardTrigger="<c-j>"
nnoremap <leader>nn :NERDTreeToggle<cr>
nnoremap <leader>nb :NERDTreeFromBookmark
nnoremap <leader>nf :NERDTreeFind<cr>
nnoremap <silent> <leader>bb :CtrlPBuffer<cr>
nnoremap <f1> :w<cr>
inoremap <f1> <esc>:w<cr>a
"let g:neocomplete#enable_at_startup = 1
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
"
"let g:airline_section_b = '%{strftime("%c")}'
"let g:airline_section_y = 'BN: %{bufnr("%")}'
"
let python_highlight_all = 1

let g:pymode_rope = 1

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0
