#!/usr/bin/env bash

COMPUTER_NAME="$1"

###############################################################################
# 📱 Dock
###############################################################################

defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock autohide-delay -float 0.05
defaults write com.apple.dock autohide-time-modifier -float 0.25
defaults write com.apple.dock magnification -bool true
defaults write com.apple.dock tilesize -int 54
defaults write com.apple.dock largesize -int 64
defaults write com.apple.dock minimize-to-application -bool true
defaults write com.apple.dock mineffect -string "scale"
defaults write com.apple.dock enable-spring-load-actions-on-all-items -bool true
defaults write com.apple.dock showhidden -bool true
defaults write com.apple.dock show-recents -bool false
defaults write com.apple.dock show-process-indicators -bool true


# Others
# Set computer name (as done via System Preferences → Sharing)
sudo scutil --set ComputerName $COMPUTER_NAME
sudo scutil --set HostName $COMPUTER_NAME
sudo scutil --set LocalHostName $COMPUTER_NAME
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string $COMPUTER_NAME
