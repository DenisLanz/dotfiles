#!/usr/bin/env sh

echo ""
echo "#############################"
echo "# Installing applications via cask from cask.sh"
echo "#############################"
echo ""

# get current location
ROOT_DIR=$1

echo "installing VSCode"
brew uninstall --cask --force visual-studio-code && brew install --cask visual-studio-code
# brew uninstall --cask --force visual-studio-code-insiders && brew install --cask visual-studio-code-insiders

if [ -f ~/Library/Application\ Support/Code/User/settings.json ]; then
  echo "found old visual studio code settings. removing..."
  rm ~/Library/Application\ Support/Code/User/settings.json
fi

ln -s "$ROOT_DIR/config/visual-studio-code-settings.json" ~/Library/Application\ Support/Code/User/settings.json

brew tap homebrew/cask-versions

# echo "installing custom fonts"
# brew tap homebrew/cask-fonts
# brew install --cask font-fira-code
# Fira code with fancy italics
#open "$ROOT_DIR/static/fira-code-iscript/FiraCodeiScript-Regular.ttf"
#open "$ROOT_DIR/static/fira-code-iscript/FiraCodeiScript-Bold.ttf"
#open "$ROOT_DIR/static/fira-code-iscript/FiraCodeiScript-Italic.ttf"

#brew install --cask font-oswald
#brew install --cask font-ubuntu
# terminal font
#brew install --cask font-caskaydia-cove-nerd-font
#brew install --cask graphql-playground

# mardown quicklook
# https://github.com/toland/qlmarkdown/
brew install --cask qlmarkdown

# Browser
brew install --cask google-chrome
brew install --cask chromium
brew install --cask firefox

# iterm terminal replacement
brew install --cask iterm2
# install iterm utilities right away
curl -L https://iterm2.com/shell_integration/install_shell_integration_and_utilities.sh | bash

brew install --cask spotify
brew install --cask bartender
brew install --cask rocket
brew install --cask monitorcontrol
brew install --cask alfred
brew install --cask contexts
brew install --cask maestral
brew install --cask marked2
brew install --cask divvy
brew install --cask keycastr
brew install --cask transmit
brew install --cask little-snitch
brew install --cask fliqlo
brew install --cask monitorcontrol
brew install --cask typeface
brew install --cask fig
