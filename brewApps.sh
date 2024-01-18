#!/bin/sh

# download brew and install all brewapps what I want
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" && brew install --cask alt-tab alacritty raycast yippy spotify visual-studio-code && brew install htop neovim bat tree

# install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Add Homebrew to your PATH 
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/"$(whoami)"/.zprofile
eval "$(opt/homebrew/bin/brew shellenv)"

# Add alias in zsh
echo "alias py="python3.12"" >> ~/.zshrc
echo "alias nv="nvim"" >> ~/.zshrc
