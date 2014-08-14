let g:go_fmt_command = "gofmt"
autocmd BufRead,BufNewFile *.go setlocal filetype=go
nnoremap <Leader>i <Plug>(go-info)
nnoremap <Leader>gd <Plug>(go-doc)
nnoremap <Leader>r <Plug>(go-run)
nnoremap <Leader>d <Plug>(go-def)
