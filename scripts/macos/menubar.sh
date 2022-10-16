#!/usr/bin/env sh

echo "Set date display in menu bar"
defaults write com.apple.menuextra.clock "DateFormat" "EEE MMM d  H.mm"

echo "Enable Show remaining battery time;"
defaults write com.apple.menuextra.battery ShowPercent -string "YES"
defaults write com.apple.menuextra.battery ShowTime -string "NO"

echo "Show bluetooth and other in the menubar"
defaults write com.apple.systemuiserver menuExtras -array "/System/Library/CoreServices/Menu Extras/AirPort.menu" "/System/Library/CoreServices/Menu Extras/Bluetooth.menu" "/System/Library/CoreServices/Menu Extras/Displays.menu" "/System/Library/CoreServices/Menu Extras/Volume.menu"
