#!/usr/bin/env sh

echo "Make Dock icons of hidden applications translucent"
defaults write com.apple.dock showhidden -bool true

echo "Automatically hide and show the Dock"
defaults write com.apple.dock autohide -bool true

echo "Remove the auto-hiding Dock delay"
defaults write com.apple.dock autohide-delay -float 0
echo "Remove the animation when hiding/showing the Dock"
defaults write com.apple.dock autohide-time-modifier -float 0

echo "Don’t automatically rearrange Spaces based on most recent use"
defaults write com.apple.dock mru-spaces -bool false

echo "Don’t animate opening applications from the Dock"
defaults write com.apple.dock launchanim -bool false

echo "Show indicator lights for open applications in the Dock"
defaults write com.apple.dock show-process-indicators -bool true

echo "Minimize windows into their application’s icon"
defaults write com.apple.dock minimize-to-application -bool true

echo "Change minimize/maximize window effect"
defaults write com.apple.dock mineffect -string "scale"

# Dock orientation: 'left', 'bottom', 'right'
echo "Pin Dock to the left"
defaults write com.apple.dock 'orientation' -string 'left'

echo "Lock the Dock position"
defaults write com.apple.dock position-immutable -bool true

echo "Set the icon size of Dock items to 22 pixels"
defaults write com.apple.dock tilesize -int 22

echo "Lock the Dock size"
defaults write com.apple.dock size-immutable -bool true

echo "Enable highlight hover effect for the grid view of a stack (Dock)"
defaults write com.apple.dock mouse-over-hilite-stack -bool true

echo "Only show active apps in dock"
defaults write com.apple.dock static-only -bool true; killall Dock

echo "Hide 'recent applications' from dock"
defaults write com.apple.dock show-recents -bool false