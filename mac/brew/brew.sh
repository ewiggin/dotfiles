#!/usr/bin/env bash

curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh

brew bundle --file=$DOTFILES_PATH/mac/brew/Brewfile
