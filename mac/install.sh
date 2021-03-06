#!/usr/bin/env bash

set -euo pipefail

##? Setups the environment
#?? 1.0.0
##?
##? Usage:
##?    install

echo "🚀 Welcome to the energy-tools/dotfiles installer!"
echo "-------------------------------------------------"
echo
export DOTFILES_PATH="$HOME/.dotfiles"
echo "👉  Cloning into: '$DOTFILES_PATH'"

# To test that git is installed (if not macOS will prompt an installer)
git --version

rm -Rf $DOTFILES_PATH

git clone --depth 1 https://github.com/ewiggin/dotfiles.git "$DOTFILES_PATH"

"$DOTFILES_PATH/bin/dot.sh" self install
