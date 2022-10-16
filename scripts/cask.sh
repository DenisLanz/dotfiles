#!/usr/bin/env bash

echo ""
echo "#############################"
echo "# Installing applications via cask from cask.sh"
echo "#############################"
echo ""

# get current location
ROOT_DIR=$1

echo "installing VSCode"
brew uninstall --cask --force visual-studio-code && brew install --cask visual-studio-code

if [ -f ~/Library/Application\ Support/Code/User/settings.json ]; then
  echo "found old visual studio code settings. removing..."
  rm ~/Library/Application\ Support/Code/User/settings.json
fi

ln -s "$ROOT_DIR/config/visual-studio-code-settings.json" ~/Library/Application\ Support/Code/User/settings.json

brew tap homebrew/cask-versions


CASKS=(
google-chrome
chromium
firefox-developer-edition
iterm2
qlmarkdown
spotify
bartender
rocket
monitorcontrol
alfred
contexts
maestral
marked2
divvy
keycastr
transmit
little-snitch
fliqlo
monitorcontrol
typeface
fig
micro-snitch
hazel
airfoil
beardedspice
docker
tower
obsidian
1password
)

for cask in "${CASKS[@]}"
do
	brew install --cask "$cask"
done

# install iterm utilities right away
curl -L https://iterm2.com/shell_integration/install_shell_integration_and_utilities.sh | bash