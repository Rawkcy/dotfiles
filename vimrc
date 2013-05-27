" vimrc configuration file
" Author: Roxanne Guo (roxanne.guo@me.com)

" stolen from Mr.Wen-Hao ;)

" Use Vundle for plugin management.
set nocompatible
syntax on
filetype off

" Vundle:
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Plugins:
Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'majutsushi/tagbar'
Bundle 'sjl/gundo.vim'

" Syntax Plugins:
Bundle 'SyntaxComplete'
Bundle 'scrooloose/syntastic'
Bundle 'groenewege/vim-less'
Bundle 'skammer/vim-css-color'
Bundle 'hail2u/vim-css3-syntax'
Bundle 'kchmck/vim-coffee-script'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'tpope/vim-liquid'
Bundle 'Glench/Vim-Jinja2-Syntax'
Bundle 'nono/vim-handlebars'
Bundle 'othree/html5.vim'
Bundle 'derekwyatt/vim-scala'
Bundle 'juvenn/mustache.vim'
Bundle 'rodjek/vim-puppet'
Bundle 'evanmiller/nginx-vim-syntax'

filetype plugin indent on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim Settings:
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme wombat256

set mouse=a
set number
set backspace=2
set title
set titleold=
set hidden
set autoindent
set ruler
set history=1000
set autoread
set laststatus=2
set nofoldenable

" By default, use spaces for tabs, and 2 spaces.
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" 80 character limit default.
set textwidth=80

" Highlight VCS conflict markers.
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

" set shortmess=a
set cmdheight=2

" Show trailing spaces.
set list
set listchars=tab:\ \ ,trail:·

" Only case sensitive if a capital letter exists in a search query.
set ignorecase
set smartcase

" Keep cursor 5 lines in the screen.
set scrolloff=5

" No visual bell.
set vb t_vb=
set noswapfile
set nobackup

" Better window splitting start locations.
set splitright
set splitbelow

" Show auto-completion in command line.
set wildmenu

" Automatically load file changes.
set autoread

" Highlight searches, and search while typing.
set hlsearch
set incsearch

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin Mappings:
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Gundo
nmap <Leader>G :GundoToggle<CR>
let g:gundo_right = 1

" Toggle
let g:tagbar_ctags_bin = '/usr/local/bin/ctags'
nmap <Leader>T :TagbarToggle<CR>

set wildignore+=*.o,.git,*.jpg,*.png,*.swp,*.d,*.gif,*.pyc,node_modules,*.class,*.crf,*.hg,*.orig,.meteor,*.acn,*.acr,*.alg,*.aux,*.bbl,*.blg,*.dvi,*.fdb_latexmk,*.glg,*.glo,*.gls,*.idx,*.ilg,*.ind,*.ist,*.lof,*.log,*.lot,*.maf,*.mtc,*.mtc0,*.nav,*.nlo,*.out,*.pdfsync,*.ps,*.snm,*.synctex.gz,*.toc,*.vrb,*.xdy,*.pdf,*.bcf,*.run.xml
