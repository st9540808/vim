set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'haya14busa/incsearch.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'
Plugin 'Yggdroot/indentLine'
Plugin 'Shougo/neocomplete'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'
"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'

call vundle#end()            " required
filetype plugin indent on    " required


"powerline symbols
"if !exists('g:airline_symbols')
"	let g:airline_symbols = {}
"endif

set encoding=utf-8
set laststatus=2
""for vim-airline""
"set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 22
"set guifont=Consolas\ for\ Powerline:h20
"set guifont=Powerline_Consolas:h14:cANSI
"set guifontwide=YaHei_Consolas_Hybrid:h22
"set guifont=Consolas:h11
"let g:Powerline_symbols='unicode'
"let g:airline_powerline_fonts = 0
"let g:airline_left_sep = '⮀'
"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = '⮁'
"let g:airline_right_sep = '⮂'
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = '⮃'
"let g:airline_branch_prefix = '⭠'
"let g:airline_readonly_symbol = '⭤'
"let g:airline_linecolumn_prefix = '⭡'
"let g:airline_whitespace = 'Ξ'
"let g:airline_section_y = 'BN: %{bufnr("%")}'
"let g:airline_theme='powerlineish'
"let g:airline#extensions#whitespace#enabled = 0
"set guifont=Meslo\ LG\ M\ for\ Powerline:h9 " <~ set the font
"set guifont=Powerline\ Consolas:h11 " <~ set the font
"let g:airline_powerline_fonts=1     " <~ activate the font in airline

set encoding=utf-8                  " <~ set the encoding
scriptencoding utf-8

""for lightline-vim""
let g:lightline = {
      \ 'component': {
      \   'readonly': '%{&readonly?"x":""}',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '|', 'right': '|' }
      \ }

let g:lightline.tab_component = {}
let g:lightline.tab_component_function = {
      \ 'filename': 'lightline#tab#filename',
      \ 'modified': 'lightline#tab#modified',
      \ 'readonly': 'lightline#tab#readonly',
      \ 'tabnum': 'lightline#tab#tabnum' }


""for YMC or neocomplete""
""YCM""
"let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_auto_trigger = 1
let g:ycm_confirm_extra_conf = 0
let g:ycm_key_invoke_completion = '<C-Space>'
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_min_num_of_chars_for_completion = 1
"let g:loaded_youcompleteme = 1
"let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
""""

""Neocomplete""



""for indentline""
let g:indentLine_char = '┆'
let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 2
let g:indentLine_setConceal = 1
let g:indentLine_conceallevel = 1
"set list lcs=tab:\|\  

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

set nu
set incsearch
set history=100
filetype on
"filetype plugin indent on		" Automatically detect file types.
set mouse=a						" Automatically enable mouse usage
set mousehide					" Hide the mouse cursor while typing
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
set wildmenu                    " Show list instead of just completing
set wildmode=list:longest,full  " Command <Tab> completion, list matches, then longest common part, then all.
set whichwrap=b,s,h,l,<,>,[,]   " Backspace and cursor keys wrap too
set scrolljump=5                " Lines to scroll when cursor leaves screen
set scrolloff=3                 " Minimum lines to keep above and below cursor
set foldenable                  " Auto fold code"

syn match cCustomFunc /\w\+\s*(/me=e-1,he=e-1
hi def link cCustomFunc Function

map <F8> :tabn <CR>
map <F7> :tabp <CR>
map ZZ :wq <CR>
:command WQ wq
:command Wq wq
:command W w
:command Q q

"highlight Comment cterm=italic

colorscheme monokai
"set fillchars+=vert:│

