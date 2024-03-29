filetype off      " Required for Vundle
set shell=/bin/bash
if has('python3')
  silent! python3 1
endif
call plug#begin()


Plug 'kien/ctrlp.vim'

Plug 'kshenoy/vim-signature'

Plug 'SirVer/ultisnips'
Plug 'Valloric/YouCompleteMe'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-obsession'

" Colorschemes
Plug 'vim-scripts/Wombat'
Plug 'zeis/vim-kolor'
Plug 'morhetz/gruvbox'
Plug 'fatih/molokai'

" Indent Guides
Plug 'nathanaelkane/vim-indent-guides'

" Trailing white space
Plug 'ntpeters/vim-better-whitespace'

" Rainbow ()'s
Plug 'luochen1990/rainbow'

" Dot graphviz
Plug 'wannesm/wmgraphviz.vim'

" Go
Plug 'fatih/vim-go'
"Plug 'rhysd/vim-go-impl'
" Plug 'jodosha/vim-godebug'

" Javascript/Typescript
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'eliba2/vim-node-inspect'


" C
Plug 'vim-scripts/a.vim'

" ctags
" Plug 'craigemery/vim-autotag'

" Ruby
"Plug 'tpope/vim-rvm'
Plug 'vim-ruby/vim-ruby'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-rails'
let g:ycm_filetype_specific_completion_to_disable = {
      \ 'ruby': 1
      \}

" terraform
Plug 'hashivim/vim-terraform'

" cloudformation
" Plug 'speshak/vim-cfn'
" let g:syntastic_cloudformation_checkers = ['cfn_lint']

" Xml
Plug 'othree/xml.vim'

" Json
Plug 'elzr/vim-json'

" Markdown
Plug 'tpope/vim-markdown'

" yaml
Plug 'stephpy/vim-yaml'

" nginx
Plug 'chr4/nginx.vim'

" .csv
Plug 'chrisbra/csv.vim'

" php
Plug '2072/PHP-Indenting-for-VIm'
Plug 'StanAngeloff/php.vim'
Plug 'phpstan/vim-phpstan'

" Git
Plug 'tpope/vim-git'
Plug 'tpope/vim-fugitive'
Plug 'tommcdo/vim-fubitive'
Plug 'tpope/vim-rhubarb'
Plug 'airblade/vim-gitgutter'

" Syntax check
Plug 'scrooloose/syntastic'

" Paste over
Plug 'prurigro/ReplaceWithRegister'

" Search with Replace
Plug 'dkprice/vim-easygrep'

call plug#end()

" Powerline
" set rtp+=/Users/peterdalinis/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

let g:Powerline_symbols="fancy"
" set rtp+=usr/local/lib/python2.7/site-packages/powerline/bindings/vim
set t_Co=256

" Filetype detection, plugins, indent, syntax {{{1
if has('autocmd')
  filetype plugin indent on   " Turn on Filetype detection, plugins, and indent
endif

if has('syntax') && !exists('g:syntax_on')
  syntax enable     " Turn on syntax highlighting
endif

"  Moving around, searching and patterns
set nostartofline     " keep cursor in same column for long-range motion cmds
set incsearch         " Highlight pattern matches as you type
set ignorecase        " ignore case when using a search pattern
set smartcase         " override 'ignorecase' when pattern has upper case character Displaying text
set scrolloff=3       " number of screen lines to show around the cursor
set number            " show line numbers
set relativenumber    " show relative numbers
set linebreak         " For lines longer than the window, wrap intelligently. This doesn't insert hard line breaks.
set showbreak=↪\ \    " string to put before wrapped screen lines
set sidescrolloff=2   " min # of columns to keep left/right of cursor
set display+=lastline " show last line, even if it doesn't fit in the window
set cmdheight=2       " # of lines for the command window cmdheight=2 helps avoid 'Press ENTER...' prompts

" Define characters to show when you show formatting stolen from https://github.com/tpope/vim-sensible
if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
  if &termencoding ==# 'utf-8' || &encoding ==# 'utf-8'
    let &listchars = "tab:\u21e5 ,trail:\u2423,extends:\u21c9,precedes:\u21c7,nbsp:\u26ad"
  endif
endif

"  Syntax, highlighting and spelling
set background=dark
colorscheme gruvbox
let g:rehash256=1
"let g:molokai_original = 1
set hls

"  Multiple windows
set laststatus=2      " Show a status line, even if there's only one Vim window
set hidden            " allow switching away from current buffer w/o writing
set switchbuf=usetab
set showtabline=2     " always show tab line

" Terminal
set ttyfast
set showcmd         " In the status bar, show incomplete commands as they are typed
set noshowmode      " don't display the current mode (Insert, Visual, Replace) in the status line.
set ruler           " Always display the current cursor position in the Status Bar

"  Editing text
set backspace=indent,eol,start  "backspace over everything
set nojoinspaces          " Use only one space after '.' when joining lines, instead of two
set completeopt+=longest
set completeopt-=preview

"  Tabs and indenting
set tabstop=2             " tab = 2 spaces
set shiftwidth=2          " autoindent indents 2 spaces
set smarttab              " <TAB> in front of line inserts 'shiftwidth' blanks
set softtabstop=2
set shiftround            " round to 'shiftwidth' for "<<" and ">>"
set expandtab

"  Folding
if has('folding')
  set nofoldenable             " When opening files, all folds open by default
endif

"  Diff mode
set diffopt+=vertical       " start diff mode with vertical splits by default

"  Reading and writing files
set autoread                " Automatically re-read files changed outside of Vim

"  Command line editing
set history=200    " Save more commands in history

"  Multi-byte characters
set encoding=utf-8

" Browser
let g:netrw_browsex_viewer="google-chrome"

set spell spelllang=en_us

autocmd VimEnter * nested
      \ if !argc() && empty(v:this_session) && filereadable('Session.vim') |
      \   source Session.vim |
      \ endif

" set wildignore+=*/tmp/*,*.so,*.swp,*.zip

" let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'
"
command -nargs=1 TabExpand call HandleTabTagExpand( <f-args> )

let s:commentchar = """

function HandleTabTagExpand(tagnumber)
    let tagident = expand("<cword>")
    redir @a
    try
        sil exe "tselect ".tagident
    catch /^Vim(\a\+):E433:/ " no tag file
        echom "No tag file found."
        return
    catch /^Vim(\a\+):E426:/ " tag not found
        echom "Tag not found."
        return
    endtry
    redir END
    let tagresults = split(@a, "\n")
    let tagmatches = []
    let linenum = 0
    for line in tagresults
        if linenum % 3 != 1
            " every third line contains the file names
            let linenum = linenum + 1
            continue
        endif
        " figure out where the filename actually starts
        " (it's usually column 32, but it might be farther)
        " one before 32 is 31, but index is 30 since arrays begin at zero
        let filestart = 30
        let c = line[filestart]
        while (filestart < strlen(line))
            let filestart = filestart + 1
            if c == " "
                break
            endif
            let c = line[filestart]
        endwhile
        " store the parsed match in an array
        call add(tagmatches, strpart(line, filestart))
        let linenum = linenum + 1
    endfor
    " navigate to the match specified by tagnumber
    try
        exe "tab drop ".tagmatches[a:tagnumber-1]
    catch /^Vim(\a\+):E471:/ " argument required (means no tag found)
        echom "Tag not found."
    endtry
    let done = 0
    let matchcount = 0
    let f_line = ""
    while done < 1 && matchcount < 1000
        sil exe "/".tagident
        let f_line = getline(".")
        let matchcount = matchcount + 1
        if match(f_line, "^\s+".s:commentchar) < 0
            let done = 1
        endif
    endwhile
    let f_index = stridx( f_line, tagident )
    sil exe "normal 0"
    sil exe "normal ".f_index."l"
endfunction
