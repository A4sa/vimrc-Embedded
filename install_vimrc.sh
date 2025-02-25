#!/bin/bash
# install_vimrc.sh
# Customized Vim Configuration for Embedded Developers Installation Script
# Author: Abdul Sattar
# Email: abdul.linuxdev@gmail.com
# Repository: https://github.com/A4sa/vimrc-Embedded.git

set -e  # Exit immediately if a command exits with a non-zero status

# Define variables
VIMRC_REPO="$HOME/vimrc-Embedded"
VIMRC_FILE="$HOME/.vimrc"
VIM_AUTOLOAD_DIR="$HOME/.vim/autoload"
VIM_PLUG_FILE="$VIM_AUTOLOAD_DIR/plug.vim"
VIM_PLUG_URL="https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"

# Install required packages
if command -v apt &>/dev/null; then
    sudo apt update && sudo apt install -y vim git curl python3 python3-pip
elif command -v pacman &>/dev/null; then
    sudo pacman -Sy --noconfirm vim git curl python
elif command -v dnf &>/dev/null; then
    sudo dnf install -y vim git curl python3
else
    echo "Unsupported package manager. Install Vim manually."
    exit 1
fi

# Clone the vimrc-Embedded repository if not already present
if [ ! -d "$VIMRC_REPO" ]; then
    git clone https://github.com/your-username/vimrc-Embedded.git "$VIMRC_REPO"
else
    echo "vimrc-Embedded already exists. Pulling latest changes."
    cd "$VIMRC_REPO" && git pull
fi

# Create symlink to .vimrc
ln -sf "$VIMRC_REPO/.vimrc" "$VIMRC_FILE"

# Install vim-plug if not installed
if [ ! -f "$VIM_PLUG_FILE" ]; then
    echo "Installing vim-plug..."
    mkdir -p "$VIM_AUTOLOAD_DIR"
    curl -fLo "$VIM_PLUG_FILE" --create-dirs "$VIM_PLUG_URL"
else
    echo "vim-plug is already installed."
fi

# Install plugins using vim-plug
vim +PlugInstall +qall

# Finish
echo "Vim setup completed successfully!"
