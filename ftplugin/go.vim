let g:go_fmt_command = "goimports"
let g:go_doc_keywordprg_enabled=0
let g:go_highlight_operators=1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:ycm_autoclose_preview_window_after_completion = 1
"let g:go_auto_type_info = 1
nmap <Leader>i <Plug>(go-info)
nmap <Leader>gd <Plug>(go-doc)
nmap <Leader>rr :wa<cr><cr><Plug>(go-run)
nmap <Leader>rt :wa<cr><cr><Plug>(go-test)
nmap <Leader>d <Plug>(go-def-tab)
nmap <Leader>rc :GoCoverage<cr>
