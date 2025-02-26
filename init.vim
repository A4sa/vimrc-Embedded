"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
" 
"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

"=====================
"   General Setting
"=====================
set number                          " Show line numbers
set relativenumber                  " Show relative line numbers
set cursorline                      " Highlight the current line
set clipboard=unnamedplus           " Clipboard btw editor

"=====================================
"      User Interface Setting
"=====================================
set termguicolrs                    " Enable true color support"
set background=dark                 " Use 'light' & 'dark'
set scrolloff=5                     " Keep 5 lines visible above/below cursor
set sidescrolloff=8                 " Keep 8 columns visible on the sides
set ruler                           " Show the cursor position
set showcmd                         " Show incomplete commands
set showmatch                       " Highlight matching brackets

"=====================================
"    Tab & Indentation Setting
"=====================================
set textwidth=80                " Wrap text to the next line at 80 characters
set tabstop=4                   " Number of spaces that a <Tab> in the file counts for
set softtabstop=4               " Number of spaces to use for each step of (auto)indent
set shiftwidth=4                " Number of spaces to use for autoindent
set expandtab                   " Use spaces instead of tabs

set smartindent                 " Auto-indent
set autoindent                  " Automatically indents new lines (loop, funcation)
set cindent                     " Enable C-style indentation

"=====================================
"     Search Settings
"=====================================
set ignorecase                  " Ignore case when searching
set smartcase                   " Override ignorecase if search contains uppercase letters
set incsearch                   " Show search results as you type
set hlsearch                    " Highlight all search results

"=====================================
"   Command-Line Setting ---> :e
"=====================================
set wildmenu                          " Enable command-line tab completion
set wildmode=longest:full,full        " Enable tab completion menu
set wildignore=*.o,*.obj,*.swp,*.bak,*.pyc,*.class

"=====================================
"    Code Folding Setting
"=====================================
set foldmethod=manuall        "Manually for code folding
set foldlevelstart=99        " Start with all folds open
set foldenable               " Enable folding
nnoremap <leader>z za        " Toggle fold with leader key

"=====================================
"   Auto-Completion  ----> Ctrl+N/P
"=====================================
set completeopt=menu,menuone,noselect,noinsert
set shortmess+=c
" menuone → Always show a completion menu even with one match.
" noselect → Doesn't auto-select anything; you manually pick.
" noinsert → Doesn't insert anything unless selected.

"===================================
"       Addition Setting
"===================================
set autoread
set backspace=indent,eol,start
set undofile
set splitright
set splitbelow

"====================================
" Configure ctags for Navgationn
"====================================
set tags=./tags;,tags                     " Look for ctags in the current directory
nmap <C-]> :tag <C-R>=expand("<cword>")<CR><CR> " Jump to definition
nmap <C-T> :pop<CR>                  " Jump back


"==================================
"   Configure cscope
"=================================
if has('cscope')
  set cscopetag " Use cscope tags
  set csto=0  " Search cscope databases in this order:
  set cst
  set nocsverb
  " Add any cscope database paths here
  " Example:
  " add cscope database /path/to/cscope.out
  " add cscope database /another/path/to/cscope.out
  " cscope add cscope.out  " Add the default cscope database

  " Key for cscope --> check mapping.vim file


"=====================================
"          FileType Setting
"=====================================
autocmd FileType c,cpp,cc  set cindent comments=sr:/*,mb:*,el:*/,:// cino=>s,e0,n0,f0,{0,}0,^-1s,:0,=s,g0,h1s,p2,t0,+2,(2,)20,*30
autocmd FileType c setlocal tabstop=4 shiftwidth=4 noexpandtab
autocmd FileType python setlocal tabstop=4 shiftwidth=4 expandtab
autocmd BufWritePre *.c,*.h :silent! undojoin | :FormatWrite
au FileType c,cpp setlocal number

autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd FileType markdown setlocal spell wrap linebreak
  
