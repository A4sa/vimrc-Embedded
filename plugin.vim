"+++++++++ Plugin for vim ++++++++++++++++++"


" Ensure Vim-Plug is installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

"========= UI & Color Scheme ==============="
Plug 'tpope/vim-sensible'
Plug 'junegunn/vim-plug'
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'


"========= Code Auto Completion ==========="
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"==== Code Formatting & Indentation ====="
Plug 'Chiel92/vim-autoformat'
Plug 'jiangmiao/auto-pairs'

"=========== Syntax Checking ============"
Plug 'dense-analysis/ale'

"=========== File Management ==========="
Plug 'preservim/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'junegunn/fzf.vim'

"=========== Git Integration =========="
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutte'
Plug 'junegunn/gv.vim'
Plug 'lewis6991/gitsigns.nvim'

"===== Markdown & Writing Support ====="
Plug 'plasticboy/vim-markdown'
Plug 'vim-pandoc/vim-pandoc'
Plug 'iamcco/markdown-preview.nvim'

"======== Tabbar for Function ======"
Plug 'preservim/tagbar'
Plug 'romgrk/barbar.nvim'   

"===Terminal & Shell Integration ==="
Plug 'voldikss/vim-floaterm'
Plug 'tpope/vim-dispatch'

call plug#end()


