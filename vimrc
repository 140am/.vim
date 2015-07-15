" ------------------------------------------------------
" Maintainer: 
"       Manuel Kreutz
"       http://140.am - manuel@140.am
" ------------------------------------------------------

" ------------------------------------------------------
" General Options
" ------------------------------------------------------
" enable syntax highlighting
syntax on
" enable file type plugins
filetype plugin indent on

set autoindent
" smart indent
set si 
" use spaces instead of tabs
set expandtab
" add/removal of space indent
set smarttab
" number of space to use for auto indent
set shiftwidth=4
" user spaces to represent a tab
set tabstop=4
set softtabstop=4

" text width / wrapping
set textwidth=79
set fo-=t
set wrap 

" Show matching brackets when text indicator is over them
set showmatch 
" How many tenths of a second to blink when matching brackets
set mat=2
" Add a bit extra margin to the left
set foldcolumn=1
" for regular expressions turn magic on
set magic
" shows the match while typing
set incsearch
" hilight search result
set hlsearch
" case insensitive search for lower case searches
set ignorecase
" when searching try to be smart about cases 
set smartcase
" show line and column number
set nonumber
" set ruler
" Height of the command bar
set cmdheight=2
" non gui content paste
set paste
" anti alias
set anti
" ui update time in ms
set updatetime=500
" command history
set history=500
" allow switch of buffers without disk write
set hidden
" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" terminal title to file
set title
" Set to auto read when a file is changed from the outside
set autoread
" disable sounds
set visualbell

" tab compleition in menu
set wildmenu
" ignore ext for auto complete
set wildignore=.svn,CVS,.git,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.pyc,*.pyo,*.swp,*.jpg,*.png,*.xpm,*.gif

" spelling
" set spell

" :W sudo saves the file 
" (useful for handling the permission-denied error)
" command W w !sudo tee % > /dev/null

highlight BadWhitespace ctermbg=red guibg=red
match BadWhitespace /^\t\+/
match BadWhitespace /\s\+$/

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Specify the behavior when switching between buffers 
try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry

" Return to last edit position when opening files (You want this!)
" autocmd BufReadPost *
"      \ if line("'\"") > 0 && line("'\"") <= line("$") |
"      \   exe "normal! g`\"" |
"      \ endif
" Remember info about open buffers on close
" set viminfo^=%

hi Pmenu guifg=#ffffff guibg=#cb2f27

" highlight current cursor line
hi CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=#2E2E2E guifg=NONE
set cursorline
 
" always show the status line
set laststatus=2
" status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

set selectmode=

set background=dark

if has("mac") || has("macunix")
    " set guifont=Monaco:h12.00
    set guifont=Source\ Code\ Pro:h12,Menlo:h12
elseif has("linux")
    set guifont=Source\ Code\ Pro:h12,Bitstream\ Vera\ Sans\ Mono:h11
elseif has("unix")
    set guifont=Monospace\ 11
endif

" Open MacVim in fullscreen mode
if has("gui_macvim")
    set fuoptions=maxvert,maxhorz
    au GUIEnter * set fullscreen
endif

" gui only settings
if has("gui_running")
    colorscheme molokai
    set t_Co=256

    " no toolbar
    set guioptions=egmrt
    set lines=62
    set columns=165
else
    colorscheme desert
endif

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" ------------------------------------------------------
" pathogen - https://github.com/tpope/vim-pathogen
" ------------------------------------------------------
execute pathogen#infect()

" ------------------------------------------------------
" Includes
" ------------------------------------------------------
if !empty(glob("~/.vimrc.custom"))
    source ~/.vimrc.custom
endif

source ~/.vim/helper_function.vim
source ~/.vim/keymap.vim
source ~/.vim/language_support.vim
source ~/.vim/plugins_config.vim

