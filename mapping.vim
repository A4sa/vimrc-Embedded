"++++++++++ Key Mapping +++++++++++++++++++++++
"<A-X> ------> Alt + X
"<C-X> ------> Ctrl+ X 
"<S-X> ------> Shift+ X
"<leader> ---> By default \ (Backspace)


let mapleader=" "    " Remap leader key to Space


"============ Function key Mapping ===========
nnoremap <F2> :FloatermToggle<CR>
nnoremap <F3> <CR>
nnoremap <F4> :TagbarToggle<CR>
map <F9> :new<CR>:read !svn diff<CR>:set syntax=diff buftype=nofile<CR>gg 

"===== Auto Completion =======
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gi <Plug>(coc-implementation)


"Navigating errors --> Ctrl+k / Ctrl+j
nnoremap <silent> <C-k> :ALENextWrap<CR>
nnoremap <silent> <C-j> :ALEPreviousWrap<CR>

"========== Git key ===========
nnoremap <leader>gs :Git status<CR>   " Quick Git status
nnoremap <leader>gc :Git commit<CR>   " Quick commit
nnoremap <leader>gp :Git push<CR>     " Quick push
nnoremap <leader>gl :Git pull<CR>     " Quick pull
nnoremap <leader>gb :Gblame<CR>       " Git blame
nnoremap <leader>gd :Gdiffsplit<CR>   " Git diff

" ======== cscope menu ======
nnoremap <leader>cs :cs find s <C-R>=expand("<cword>")<CR>

" ====== Tab Navigation ======
nnoremap <C-T> :tabnew<CR>            " Open a new tab (Ctrl+T)

" ====== File Handling ======
nnoremap <C-S> :w<CR>                 " Save file (Ctrl+S)
nnoremap <C-Q> :q<CR>                 " Close file (Ctrl+Q)

" ====== NERDTree Integration ======
nnoremap <C-F> :NERDTreeToggle<CR>    " Toggle NERDTree with Ctrl+F
nnoremap <leader>nf :NERDTreeFind<CR> " Find current file in NERDTree"

"========= Other Key ========
nnoremap <Leader>d :vsp<CR>:exe "tag ".expand("<cword>")<CR>
nnoremap <Leader>/ :nohlsearch<CR>
nnoremap <Leader>m :!glow %<CR>

"====== Work in diff Mode ========
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
" <F9>

"======== Markdown md file =========="
nnoremap <leader>mp :MarkdownPreview<CR>
nnoremap <leader>mc :MarkdownPreviewStop<CR>

"Key for Markdown file
" za  ----> Toggle fold/unfolld section
" zo  ----> Open a fold section
" zc  -----> Close the Fold section

"==== Floating Terminal ====
nnoremap <leader>tn :FloatermNew<CR>  " Open new Terminal"

" Cycle between terminals
nnoremap <leader>tl :FloatermNext<CR>
nnoremap <leader>tp :FloatermPrev<CR>

"=== Window Splitting & Navigation ===="
" Easy split navigation using Ctrl + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Split windows easily
nnoremap <leader>v :vsplit<CR>
nnoremap <leader>h :split<CR>

" ===== Miscellaneous =====''
" Copy to system clipboard
vnoremap <leader>y "+y
nnoremap <leader>Y "+yg_

" Paste from system clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
