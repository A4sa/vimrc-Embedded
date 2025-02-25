" ============================================================================
"                   Customized Vim Configuration for Embedded Developers
"                     🚀 Speed | 💻 Efficiency | 🔧 Productivity 🚀
" ============================================================================
"
"  Author      : Abdul Sattar
"  Email       : abdul.linuxdev@gmail.com
"  Created On  : February 2025
"  Repository  : https://github.com/A4sa/vimrc-Embedded.git
"  Description : A professional and optimized Vim configuration tailored for
"                embedded systems development.
"
"  License     : MIT (or any other preferred license)
"
" ============================================================================

"=====================
"   General Setting
"=====================
set nocompatible                    " Disable Vi compatibility mode (Use Vim features)"
filetype on                         " Enable filetype detection
filetype indent on                  " Enable filetype-specific indenting
filetype plugin on                  " Enable filetype-specific plugins

set number                          " Show line numbers
set relativenumber                  " Show relative line numbers
set cursorline                      " Highlight the current line

"=====================================
"      User Interface Setting
"=====================================
syntax enable                       " Enable syntax highlighting
set termguicolrs                    " Enable true color support"    
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

"======================================
"  vimdiff setting ---> Work in diff mode
"=======================================   
if &diff
  map <M-Down> ]c
  map <M-Up> [c
  map <M-Left> do
  map <M-Right> dp
  map <F9> :new<CR>:read !svn diff<CR>:set syntax=diff buftype=nofile<CR>gg
endif

" <M-Down> (Alt + Down)     → Go to next difference.
" <M-Up> (Alt + Up)         → Go to previous difference.
" <M-Left> (Alt + Left)     → Undo changes (revert difference).
" <M-Right> (Alt + Right)   → Apply changes from other file.
" <F9>                      → Run svn diff and open the result.

"====================================
" Configure ctags for Navgationn 
"====================================
set tags=./tags;,tags                     " Look for ctags in the current directory
nmap <C-]> :tag <C-R>=expand("<cword>")<CR><CR> " Jump to definition
nmap <C-T> :pop<CR>                  " Jump back

"=====================================
"          FileType Setting
"=====================================
autocmd FileType c setlocal tabstop=4 shiftwidth=4 noexpandtab
autocmd FileType python setlocal tabstop=4 shiftwidth=4 expandtab
autocmd BufWritePre *.c,*.h :silent! undojoin | :FormatWrite
au FileType c,cpp setlocal number

autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd FileType markdown setlocal spell wrap linebreak

