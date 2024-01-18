#!/bin/sh

# Chck if user has brew command or not
if ! type "brew" > /dev/null; then
    # download brew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    # Add Homebrew to your PATH 
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/"$(whoami)"/.zprofile
    eval "$(opt/homebrew/bin/brew shellenv)"
fi

# install all brew apps we need
brew install --cask microsoft-office slack googel-chrome zoom

echo "download ends successfully"