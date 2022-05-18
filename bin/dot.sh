#!/usr/bin/env bash

set -euo pipefail

# TODO: select system (mac | linux)

source "$DOTFILES_PATH/mac/brew/brew.sh"
source "$DOTFILES_PATH/projects/download-projects.sh"
source "$DOTFILES_PATH/java/install.sh"
source "$DOTFILES_PATH/docker/install.sh"
source "$DOTFILES_PATH/mac/configure-mac.sh"

# Move configurations to ~/.config
cp -Rf $DOTFILES_PATH/configs/ ~/.config

# Move environment configuration to ~
cp -R $DOTFILES_PATH/mac/terminal/ ~

# install oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"