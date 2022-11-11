let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn$\|\.yardoc\|\.vagrant\|\data\|node_modules\|tmp$|www/protected/composer_vendor\',
  \ 'file': '\.exe$\|\.so$\|\.dat$'
  \ }
let g:ctrlp_open_new_file = 't'
let g:ctrlp_open_multiple_files = '10tjr'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_show_hidden = 1
let g:ctrlp_match_window = 'results:100'
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif
