" pretty print JSON buffer
if executable('python')
  setlocal equalprg=python\ -m\ json.tool
endif

let g:vim_json_syntax_conceal = 0
:setlocal foldmethod=syntax
