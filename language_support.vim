" PEP8 warnings to ignore
" let g:pep8_ignore = "E501,E701,E203,E251,E203,E201"

" Markdown .md extension
au BufRead,BufNewFile *.md set filetype=markdown

" Javascript
autocmd FileType javascript setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
let javascript_enable_domhtmlcss=1

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()

" Apache Pig
augroup filetypedetect
  au BufNewFile,BufRead *.pig set filetype=pig syntax=pig 
augroup END
