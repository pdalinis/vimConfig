let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_javascript_eslint_exe='$(npm bin)/eslint'
let g:ycm_autoclose_preview_window_after_completion = 1
"let g:go_auto_type_info = 1

nmap <Leader>d :YcmCompleter GoToImplementation<CR>
nmap <Leader>r :YcmCompleter GoToReferences<CR>
nmap <Leader>i :YcmCompleter GetType<CR>
