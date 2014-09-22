filetype off      " Required for Vundle

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Plugin 'kien/ctrlp.vim'

Bundle 'SirVer/ultisnips'
Bundle 'Valloric/YouCompleteMe'
Bundle 'tpope/vim-commentary'

" Colorschemes
Bundle 'vim-scripts/Wombat'
Bundle 'zeis/vim-kolor'
Bundle 'morhetz/gruvbox'
Bundle 'fatih/molokai'

" Indent Guides
Bundle 'nathanaelkane/vim-indent-guides'

" Go
Bundle 'fatih/vim-go'

" Ruby
Plugin 'vim-ruby/vim-ruby'

" Xml
Bundle 'othree/xml.vim'

" Json
Plugin 'elzr/vim-json'

" Markdown
Plugin 'tpope/vim-markdown'

" Git
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-fugitive'
Bundle 'airblade/vim-gitgutter'

" Syntax check
Plugin 'scrooloose/syntastic'

" Powerline
let g:Powerline_symbols="fancy"
set rtp+=~/.local/lib/python2.7/site-packages/powerline/bindings/vim
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
