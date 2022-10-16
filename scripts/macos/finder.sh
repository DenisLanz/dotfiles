#!/usr/bin/env sh

echo "Show Path bar in Finder"
defaults write com.apple.finder ShowPathbar -bool true

echo "Show Status bar in Finder"
defaults write com.apple.finder ShowStatusBar -bool true

echo "Use current directory as default search scope in Finder"
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

echo "show the ~/Library folder in Finder"
chflags nohidden ~/Library

echo "Set appearance to graphite"
defaults write NSGlobalDomain AppleAquaColorVariant -int 6

echo "Set sidebar icon size to small"
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 1

echo "Finder: show all filename extensions"
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# echo "show hidden files by default"
# defaults write com.apple.Finder AppleShowAllFiles -bool true

echo "Finder: allow quitting via ⌘ + Q; doing so will also hide desktop icons"
defaults write com.apple.finder QuitMenuItem -bool true

echo "Finder: disable window animations and Get Info animations"
defaults write com.apple.finder DisableAllAnimations -bool true

echo "Hide all desktop icons because who need 'em'"
defaults write com.apple.finder CreateDesktop -bool false

echo "Disable the “Are you sure you want to open this application?” dialog"
defaults write com.apple.LaunchServices LSQuarantine -bool false

echo "Add Tags… Keyboard Shortcut cmd+shift+t"
defaults write com.apple.finder NSUserKeyEquivalents {"Tags…"="@$t"\;}'