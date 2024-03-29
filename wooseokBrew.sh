#!/bin/sh

# Chck if user has brew command or not
if ! type "brew" > /dev/null; then
    echo "you don't have brew in your terminal"
    # download brew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    # Add Homebrew to your PATH 
    eval "$(opt/homebrew/bin/brew shellenv)"
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/"$(whoami)"/.zprofile
    else
        echo ""
        echo 'you have already brew in your terminal!'
fi

echo "try to install all brew apps"
# download brew and install all brewapps what I want

testAndDownload (){
    if test -d "/Applications/$1.app"; then
        echo "you have already $1"
    else 
        echo "download $1"
        brew install --cask $2
    fi
}

testAndDownload "AltTab" "alt-tab"
testAndDownload "Alacritty" "alacritty"
testAndDownload "Raycast" "raycast"
testAndDownload "Yippy" "yippy"
testAndDownload "Spotify" "spotify"
testAndDownload "Visual Studio Code" "visual-studio-code"

brew install htop neovim bat tree tmux tldr

# # install oh my zsh
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Add alias in zsh
echo "alias py="python3.12"" >> ~/.zshrc
echo "alias nv="nvim"" >> ~/.zshrc

# Change right Command key to fn key.
 hidutil property --set '{"UserKeyMapping":[{"HIDKeyboardModifierMappingSrc":0x7000000E7,"HIDKeyboardModifierMappingDst":0xFF00000003}]}'

# if you wannt to reset it use     hidutil property --set '{"UserKeyMapping":[]}' 
