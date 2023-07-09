#!/usr/bin/env bash

# check if environment parameter is passed
if [ $# -eq 0 ]
then
    echo "Environment parameter is missing."
    exit 1;
fi

# check if environment is valid
if [ "$1" != "home" ] && [ "$1" != "work" ]
then
    echo "Invalid environment parameter, must be 'home' or 'work'
    exit 1
fi
 
if test ! $(which brew); then
    echo "Installing homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# brew update
# brew bundle --file Brewfile.essentials
brew bundle --file Brewfile.$1
