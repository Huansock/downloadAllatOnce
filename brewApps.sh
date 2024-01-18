#!/bin/sh

# Chck if user has brew command or not
if ! type "brew" > /dev/null; then
    # download brew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    # Add Homebrew to your PATH 
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/"$(whoami)"/.zprofile
    eval "$(opt/homebrew/bin/brew shellenv)"
    else
        echo ""
        echo 'you have already brew in your terminal!'
fi

# download brew and install all brewapps what I want
brew install --cask alt-tab alacritty raycast yippy spotify visual-studio-code && brew install htop neovim bat tree tmux tldr

# install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Add alias in zsh
echo "alias py="python3.12"" >> ~/.zshrc
echo "alias nv="nvim"" >> ~/.zshrc
