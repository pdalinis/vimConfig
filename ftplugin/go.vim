let g:go_fmt_command = "gofmt"
nnoremap <Leader>i :<C-u>call go#complete#Info()<CR>
nnoremap <Leader>gd :GoDoc<CR>
nnoremap <Leader>r :<C-u>call go#command#Run(expand('%'))<CR>
nnoremap <Leader>d :<C-u>call Godef()<CR>
