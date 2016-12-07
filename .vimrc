set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'haya14busa/incsearch.vim'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin commands are not allowed.
" Put your stuff after this line

"let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

"powerline symbols
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

set encoding=utf-8
set laststatus=2
"set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 22
"set guifont=Consolas\ for\ Powerline:h20
"set guifont=Powerline_Consolas:h14:cANSI
set guifontwide=YaHei_Consolas_Hybrid:h22
"set guifont=Consolas:h11
let g:Powerline_symbols='unicode'
"let g:airline_powerline_fonts = 1
"let g:airline_left_sep = '⮀'
"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = '⮁'
"let g:airline_right_sep = '⮂'
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = '⮃'
"let g:airline_branch_prefix = '⭠'
"let g:airline_readonly_symbol = '⭤'
"let g:airline_linecolumn_prefix = '⭡'
"g:airline_section_y = 'BN: %{bufnr("%")}'
let g:airline_theme='powerlineish'
let g:airline#extensions#whitespace#enabled = 0
scriptencoding utf-8

"set guifont=Meslo\ LG\ M\ for\ Powerline:h9 " <~ set the font
set guifont=Powerline\ Consolas:h11 " <~ set the font
set encoding=utf-8                  " <~ set the encoding
let g:airline_powerline_fonts=1     " <~ activate the font in airline

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

set nu
set incsearch
set history=100
filetype on
"filetype plugin indent on   " Automatically detect file types.
set mouse=a					" Automatically enable mouse usage
set mousehide				" Hide the mouse cursor while typing
set tabpagemax=15               " Only show 15 tabs
set showmode                    " Display the current mode

set cursorline                  " Highlight current line

highlight clear SignColumn      " SignColumn should match background
highlight clear LineNr          " Current line number row will have same background color in relative mode
highlight clear CursorLineNr    " Remove highlight color from current line number

set nowrap                      " Do not wrap long lines
set autoindent					" Indent at the same level of the previous line
set shiftwidth=4				" Use indents of 4 spaces
"set expandtab					" Tabs are spaces, not tabs
set tabstop=4					" An indentation every four columns
set softtabstop=4				" Let backspace delete indent
set nojoinspaces				" Prevents inserting two spaces after punctuation on a join (J)
set splitright					" Puts new vsplit windows to the right of the current
set splitbelow					" Puts new split windows to the bottom of the current"

set smartcase                   " Case sensitive when uc present
"set wildmenu                    " Show list instead of just completing
"set wildmode=list:longest,full  " Command <Tab> completion, list matches, then longest common part, then all.
set whichwrap=b,s,h,l,<,>,[,]   " Backspace and cursor keys wrap too
set scrolljump=5                " Lines to scroll when cursor leaves screen
set scrolloff=3                 " Minimum lines to keep above and below cursor
set foldenable                  " Auto fold code"

syn match cCustomFunc /\w\+\s*(/me=e-1,he=e-1
hi def link cCustomFunc Function

colorscheme monokai

map <F8> :tabn <CR>
map <F7> :tabp <CR>
map ZZ :wq <CR>
:command WQ wq
:command Wq wq
:command W w
:command Q q

"highlight Comment cterm=italic
