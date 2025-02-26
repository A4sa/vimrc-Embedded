"+++++++++ Plugin Configuration +++++++++++++++++++"

"========= UI & Color Scheme ==============="
let g:airline_theme='powerlineish' 
let g:airline_powerline_fonts = 1               " Enable powerline fonts for Airline"
colorscheme gruvbox
let g:webdevicons_enable_nerdtree = 1           " Enable file icons

"========= Code Auto Completion ============"
let g:coc_global_extensions = ['coc-json', 'coc-tsserver', 'coc-python', 'coc-clangd']

"=========== Syntax Checking =============="
let g:ale_enabled = 1                   " Enable ALE in VIM"
let g:ale_fix_on_save = 1               " Enable Auto-fixing when saving"

" Enable linting when typing and saving
let g:ale_lint_on_text_changed = 'always' " never, normal, insert
let g:ale_lint_on_enter = 1                " Runs liniting when open a file" 
let g:ale_lint_on_save = 1                 " Run liniting when saving the file" 

" Set linters for different languages - error check
let g:ale_linters = {
\   'c': ['gcc', 'clang'],
\   'cpp': ['gcc', 'clang'],
\   'python': ['pylint', 'flake8'],
\   'sh': ['shellcheck']
\}

" Set fixer tools for auto-formatting
let g:ale_fixers = {
\   'c': ['gcc', 'clang-format'],
\   'cpp': ['clang-format'],
\   'python': ['black', 'isort'],
\   'sh': ['shfmt']
\}

let g:ale_virtualtext_cursor = 1            " Show error messages near the cursor
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚠'


"============ File Management ============"
let g:NERDTreeAutoDeleteBuffer = 1
let NERDTreeShowHidden=1   " Show hidden files
let NERDTreeMinimalUI=0    " Use a minimal UI for better performance
let g:NERDTreeIgnore = ['\.pyc$', '__pycache__', '\.o$', '\.swp$', '\.git', '\.log$']

let g:NERDTreeQuitOnOpen=1
let g:NERDTreeMapActivateNode='<Enter>'

let g:NERDDefaultAlign = 'right'                " Align comments to the 'right' → code // comment
let g:NERDSpaceDelims = 1                       " Add spaces of //, #

let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ 'Modified'  : '✹',
    \ 'Staged'    : '✚',
    \ 'Untracked' : '✭',
    \ 'Renamed'   : '➜',
    \ 'Unmerged'  : '═',
    \ 'Deleted'   : '✖',
    \ 'Dirty'     : '✗',
    \ 'Ignored'   : '☒',
    \ 'Clean'     : '✔︎',
    \ 'Unknown'   : '?'
    \ }

"Leader key for NERDCommentor
"\cc  ---> Comment the selected lines
"\cu  ---> Uncomment the selected line

" fzf.vim configuration
let g:fzf_layout = { 'window': 'belowright split' }
let g:fzf_preview_window = ['right:50%', 'ctrl-/']

" Use bat for syntax highlighting in the preview window
if executable('bat')
  let g:fzf_preview_command = 'bat --style=numbers --color=always --line-range :500 {2}'
endif

"============ Git Integration ============"
"Key Mapping for Git --> On mapping.vim

"====== Markdown & Writing Support ======="
Plug 'plasticboy/vim-markdown'
let g:vim_markdown_conceal = 1                     " Enable syntax concealment (hides ** around blod text. etc)" 
let g:vim_markdown_folding_disabled = 0            " Enable folding " 
let g:vim_markdown_folding_level = 6               " Allows folding up to six heading level --#, ##, ###. etc"
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_fenced_languages = ['c', 'cpp', 'python', 'bash'] " Enable syntax highlighting for code blocks
"Key for Markdown file
" za  ----> Toggle fold/unfolld section
" zo  ----> Open a fold section
" zc  -----> Close the Fold section

let g:mkdp_auto_start = 1
let g:mkdp_browser = 'firefox'                  " Change this to your preferred browser

"======== Tabbar for Function ===========
let g:tagbar_right = 1                                  " Open on the right side
let g:tagbar_width = 35                                 " Set the width
let g:tagbar_autofocus = 1                              " Auto-focus on Tagbar when it opens
let g:tagbar_autoclose = 0                              " Don't auto-close Tagbar when focus shifts
let g:tagbar_sort = 0
highlight TagbarCurrent  guifg=#ffffff guibg=#444444
let g:tagbar_filetype_map = {
  \ 'python': 'py',
  \ 'c': 'c',
  \ 'cpp': 'cpp',
  \ }


"===Terminal & Shell Integration ===""
let g:floaterm_autoclose = 1
let g:floaterm_width = 0.8
let g:floaterm_height = 0.8


