set re=1
"Don't automatically comment the next/previous line after hitting 'o' or 'O'
setlocal formatoptions-=o

" highlight ruby whitespace errors
let ruby_space_errors = 1
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1

" set the 'foldmethod' option to 'syntax' and allow folding of
" classes, modules, methods, code blocks, heredocs and comments.
let ruby_fold = 1

compiler ruby

nmap <Leader>d <C-]>
nmap <Leader>t :CtrlPTag<cr>
