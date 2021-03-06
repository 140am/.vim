" ------------------------------------------------------
" python-mode - https://github.com/klen/python-mode
" ------------------------------------------------------

" PEP8 warnings to ignore
let g:pep8_ignore = "E501,E701,E203,E251,E203,E201"

" ------------------------------------------------------
" goyo.vim - https://github.com/junegunn/goyo.vim
" ------------------------------------------------------
function! s:goyo_enter()
  if has('gui_running')
    set fullscreen
    set linespace=7
  elseif exists('$TMUX')
    silent !tmux set status off
  endif

  set noshowmode
  set noshowcmd
  set scrolloff=999
endfunction

function! s:goyo_leave()
  if has('gui_running')
    set linespace=0
  elseif exists('$TMUX')
    silent !tmux set status on
  endif

  set showmode
  set showcmd
  set scrolloff=5

  " hack to reset line highlighting
  highlight CursorLine cterm=NONE ctermbg=235 ctermfg=NONE guibg=#2E2E2E guifg=NONE
endfunction

autocmd User GoyoEnter nested call <SID>goyo_enter()
autocmd User GoyoLeave nested call <SID>goyo_leave()

" ------------------------------------------------------
" vim-go - https://github.com/fatih/vim-go
" ------------------------------------------------------
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" automatically insert import paths instead of gofmt
let g:go_fmt_command = "goimports"
" disable auto fmt on save
let g:go_fmt_autosave = 1
" shows errors for the fmt command
let g:go_fmt_fail_silently = 0

" ------------------------------------------------------
" NERDTree - https://github.com/scrooloose/nerdtree
"
" The NERDtree plugin displays a file browser in the right hand bar
" ------------------------------------------------------

" open browser on start
" au VimEnter * NERDTreeToggle

" display the file browser at the right side
let g:NERDTreeWinPos = "right"
let g:NERDTreeWinSize=25

" close browser window after opening the first file
let NERDTreeQuitOnOpen=1
" you can reopen it with ctrl+n

" to not display certain files and directories
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__', 'node_modules', 'bower_components']

" ------------------------------------------------------
" Ag - https://github.com/rking/ag.vim
" ------------------------------------------------------

" start searching from your project root instead of the cwd
let g:ag_working_path_mode="r"

" ------------------------------------------------------
" syntastic - https://github.com/scrooloose/syntastic
" ------------------------------------------------------

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1

" automatically populate and open window
" let g:syntastic_auto_loc_list = 1

let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

" let g:syntastic_go_checkers=['gofmt']
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

let g:go_list_type = "quickfix"

" ------------------------------------------------------
" tagbar - http://majutsushi.github.io/tagbar/
" ------------------------------------------------------

" automatically open for all supported file types
autocmd FileType * nested :call tagbar#autoopen(0)
autocmd BufEnter * nested :call tagbar#autoopen(0)

let g:tagbar_width = 28

" ------------------------------------------------------
" neocomplete - https://github.com/Shougo/neocomplete.vim
" ------------------------------------------------------

" Use AutoComplPop.
let g:acp_enableAtStartup = 0

" Use neocomplete.
let g:neocomplete#enable_at_startup = 1

" Use smartcase.
let g:neocomplete#enable_smart_case = 1

" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplete#close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"

" For cursor moving in insert mode(Not recommended)
"inoremap <expr><Left>  neocomplete#close_popup() . "\<Left>"
"inoremap <expr><Right> neocomplete#close_popup() . "\<Right>"
"inoremap <expr><Up>    neocomplete#close_popup() . "\<Up>"
"inoremap <expr><Down>  neocomplete#close_popup() . "\<Down>"
" Or set this.
"let g:neocomplete#enable_cursor_hold_i = 1
" Or set this.
"let g:neocomplete#enable_insert_char_pre = 1

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" ------------------------------------------------------
" vim-airline https://github.com/bling/vim-airline
" ------------------------------------------------------

" Default color theme
let g:airline_theme='bubblegum'

" Disable whitespace checks
let g:airline#extensions#whitespace#checks=[]

" Enable tagbar support
let g:airline#extensions#tagbar#enabled = 1

" ------------------------------------------------------
" https://github.com/kien/ctrlp.vim
" ------------------------------------------------------

" order matching files top to bottom with ttb
let g:ctrlp_match_window = 'bottom,order:ttb'

" always open files in new buffers
let g:ctrlp_switch_buffer = 0

" change the working directory during a Vim session
let g:ctrlp_working_path_mode = 0

" use Ag insetad of default vimscript implementation
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

