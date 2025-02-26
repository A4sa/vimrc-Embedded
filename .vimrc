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

"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

" Source other configuration files
source $HOME/.config/vim/init.vim               " General VIM setting
source $HOME/.config/vim/plugin.vim             " Plugin for vim
source $HOME/.config/vim/config.vim             " Plugin config
source $HOME/.config/vim/mapping.vim            " Key mapping

" Set the runtime path to include your configuration directory
set runtimepath^=~/.config/vim

"=====================
"   General Setting
"=====================
set nocompatible                    " Disable Vi compatibility mode (Use Vim features)"
filetype on                         " Enable filetype detection
filetype indent on                  " Enable filetype-specific indenting
filetype plugin on                  " Enable filetype-specific plugins
syntax enable                       " Enable syntax highlighting
