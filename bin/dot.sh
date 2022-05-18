#!/usr/bin/env bash

set -euo pipefail

# TODO: select system (mac | linux)

source "$DOTFILES_PATH/mac/brew/brew.sh"
source "$DOTFILES_PATH/configure-mac.sh"
source "$DOTFILES_PATH/projects/download-projects.sh"
source "$DOTFILES_PATH/docker/install.sh"

# Move configurations to ~/.config
mv $DOTFILES_PATH/configs ~/.config

# Move environment configuration to ~
mv $DOTFILES_PATH/terminal/* ~
