#!/usr/bin/env bash


brew bundle --file=$DOTFILES_PATH/mac/brew/Brewfile

# Create symlink to use docker command
open /Applications/Docker.app
