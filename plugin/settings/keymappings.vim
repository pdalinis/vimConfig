let mapleader = ","

" Split line at cursor - not yet sure which i like better
nnoremap K i<CR><Esc>h 

" remap esc to enter
inoremap <CR> <Esc>

" format
nnoremap <leader>f mzgg=G`z<cr>

" Toggle paste mode
set pastetoggle=<F1>

" Toggle the gutter
nnoremap <F2> :call ToggleGutter()<cr>
function! ToggleGutter()
  if &number
    echom "hiding gutter"
    set nonumber
    set norelativenumber
    call gitgutter#disable()
  else
    echom "showing gutter"
    set number
    set relativenumber
    call gitgutter#enable()
  endif
endfunction

" Toggle highlight
nnoremap <silent> <F3> :set hlsearch!<cr>

" Open all in tabs
nnoremap <leader>og :call OpenAllInTabs("go")<cr>
nnoremap <leader>or :call OpenAllInTabs("rb")<cr>
function! OpenAllInTabs(type)
  :0,100bd
  execute ":n **/*.".a:type
  :tab ball
  call CleanEmptyBuffers()
  normal 1gt
endfunction

" Close all empty buffers
function! CleanEmptyBuffers()
  let buffers = filter(range(0, bufnr('$')), 'buflisted(v:val) && empty(bufname(v:val)) && bufwinnr(v:val)<0')
  if !empty(buffers)
    exe 'bw '.join(buffers, ' ')
  endif
endfunction
