" ------------------------------------------------------
" Maintainer:
"       Manuel Kreutz
"       http://140.am - manuel@140.am
" ------------------------------------------------------

" ------------------------------------------------------
" General Options
" ------------------------------------------------------

" use 256 colors
set t_Co=256

" enable syntax highlighting
syntax on

" set file type based on file extensions
augroup filetypedetect
  " Markdown .md extension
  au BufRead,BufNewFile *.md set filetype=markdown
  " Apache Pig
  au BufNewFile,BufRead *.pig set filetype=pig syntax=pig
augroup END

" enable file type plugins
filetype plugin indent on

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" copy the indentation from the previous line on new lines
set autoindent
" smart indent
set smartindent
" use spaces instead of tabs
set expandtab
" add/removal of space indent
set smarttab
" number of space to use for auto indent
set shiftwidth=2
" number of visual spaces per TAB
set tabstop=2
" number of spaces in tab when editing
set softtabstop=2
" show invisible characters ex tab vs spaces, EOL is handled different
set listchars=tab:>-,trail:~,extends:>,precedes:<
set list

" text width / wrapping
set textwidth=79
set fo-=t
set wrap

" avoid columns getting to long
syntax sync minlines=256
set synmaxcol=300
set re=1

" enable folding
set foldenable
" open most folds by default
set foldlevelstart=10
" 10 nested fold max
set foldnestmax=10
" fold based on indent level
set foldmethod=indent

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

" read modeline of a file
set modelines=1

" redraw only when we need to.
set lazyredraw

" highlight current cursor line
set cursorline

" disable automatic write backup
set nowb
" disable temporary swap files
set noswapfile

" enable backups but store all files in tmp directory
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

" reload buffer if an open file changed on disk while editing
set autoread

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
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
set viminfo^=%


" always show the status line
set laststatus=2
" status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

set selectmode=

" ------------------------------------------------------
" pathogen - https://github.com/tpope/vim-pathogen
" ------------------------------------------------------

" load all plugins from the `bundle` directory
execute pathogen#infect()

" ------------------------------------------------------
" init - put everything together
" ------------------------------------------------------

source ~/.vim/helper.vim
source ~/.vim/plugins.vim
source ~/.vim/keyboard.vim

" enable Mac OS X clipboard copy
set clipboard=unnamed

" ------------------------------------------------------
" UI styling
" ------------------------------------------------------

" set default styling
set background=dark

" gui only settings
if has("gui_running")
    colorscheme molokai

    " no toolbar
    set guioptions=egmrt
    set lines=62
    set columns=165
else
    colorscheme desert
endif

if has("mac") || has("macunix")
    " set guifont=Monaco:h12.00
    set guifont=Source\ Code\ Pro:h12,Menlo:h12
elseif has("linux")
    set guifont=Source\ Code\ Pro:h12,Bitstream\ Vera\ Sans\ Mono:h11
elseif has("unix")
    set guifont=Monospace\ 11
endif

" open MacVim in fullscreen mode
if has("gui_macvim")
    set fuoptions=maxvert,maxhorz
    au GUIEnter * set fullscreen
endif

" set cursorline colors
highlight CursorLine cterm=NONE ctermbg=235 ctermfg=NONE guibg=#2E2E2E guifg=NONE
" set color of number column on cursorline
highlight CursorLineNR ctermbg=235 ctermfg=white

" highlight bad whitespace in red
highlight BadWhitespace ctermbg=red guibg=red
match BadWhitespace /^\t\+/
match BadWhitespace /\s\+$/

" color of completion dialog menu
highlight Pmenu guifg=#ffffff guibg=#cb2f27

" ------------------------------------------------------
" configuration handling
" ------------------------------------------------------

" optional custom local vim configuration settings
if !empty(glob("~/.vimrc.custom"))
    source ~/.vimrc.custom
endif

" watch for `vimrc` config edits and reload configuration
augroup myvimrc
    au!
    au BufWritePost .vimrc,.vimrc.custom so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END
