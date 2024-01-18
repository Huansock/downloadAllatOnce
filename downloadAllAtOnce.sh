#!/bin/sh

# Chck if user has brew command or not
if ! type "brew" > /dev/null; then

    # download brew
    echo "you don't have brew in your terminal"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    # Add Homebrew to your PATH 
    eval "$(opt/homebrew/bin/brew shellenv)"
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/"$(whoami)"/.zprofile
    else
        echo ""
        echo 'you have already brew in your terminal!'
fi

# install all brew apps we need
echo "try to install microsoft-offic, slack, google-chrome, zoom"

testAndDownload (){
    if test -d "/Applications/$1.app"; then
        echo "you have already $1"
    else 
        echo "download $1"
        brew install --cask $2
    fi
}

testAndDownload "Microsoft Outlook" "microsoft-office"
testAndDownload "Slack" "slack"
testAndDownload "Google Chrome" "google-chrome"
testAndDownload "zoom.us" "zoom"



echo ""
echo "download ended"
echo "these Apps installed"
brew list