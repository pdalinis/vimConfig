let g:go_fmt_command = "gofmt"
let g:go_doc_keywordprg_enabled=0
let g:go_highlight_operators=1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
nmap <Leader>i <Plug>(go-info)
nmap <Leader>gd <Plug>(go-doc)
nmap <Leader>rr :wa<cr><cr><Plug>(go-run)
nmap <Leader>rt :wa<cr><cr><Plug>(go-test)
nmap <Leader>d <Plug>(go-def-tab)
