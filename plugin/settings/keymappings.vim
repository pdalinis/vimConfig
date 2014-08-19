let mapleader = ","

" Split line at cursor - not yet sure which i like better
nnoremap K i<CR><Esc>h 

" remap esc to enter
imap <CR> <Esc>

" Toggle paste mode
set pastetoggle=<F1>

" Toggle the gutter
nnoremap <F2> :call ToggleGutter()<cr>
function! ToggleGutter()
  if &number
    set nonumber
    call gitgutter#disable()
  else
    set number
    call gitgutter#enable()
  endif
endfunction

" Toggle highlight
nnoremap <silent> <F3> :set hlsearch!<cr>
