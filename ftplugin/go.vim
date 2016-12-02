let g:go_fmt_command = "goimports"
let g:go_def_mode = 'godef'
let g:go_doc_keywordprg_enabled=0
let g:go_highlight_fields=1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_types = 1

let g:ycm_autoclose_preview_window_after_completion = 1
"let g:go_auto_type_info = 1
let g:syntastic_go_checkers = ['go', 'golint', 'govet']
let g:syntastic_mode_map = { 'mode': 'active', 'active_filetypes': ['go'] }
let g:go_list_type = "quickfix"

nmap <Leader>i <Plug>(go-info)
nmap <Leader>gd <Plug>(go-doc)
nmap <Leader>rr :wa<cr><cr><Plug>(go-run)
nmap <Leader>rt :wa<cr><cr><Plug>(go-test)
nmap <Leader>d <Plug>(go-def-tab)
nmap <Leader>rc :GoCoverage<cr>
