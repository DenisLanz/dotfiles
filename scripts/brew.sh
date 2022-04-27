#!/usr/bin/env sh

echo "#############################"
echo "# Install Homerbrew and various Dependencies"
echo "#############################"
echo ""

ROOT_DIR=$1
source "$ROOT_DIR/commands/__util.sh"

# Install Homebrew if not already installed
brew -v >/dev/null 2>&1 || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew_install_or_upgrade zsh
brew_install_or_upgrade zsh-completions

# set it as default shell
chsh -s /bin/zsh

# https://github.com/wting/autojump
brew_install_or_upgrade autojump

# https://github.com/cli/cli 
brew_install_or_upgrade gh

brew_install_or_upgrade curl
brew_install_or_upgrade git
brew_install_or_upgrade git-delta
brew_install_or_upgrade git-lfs

# finish git lfs installation
git lfs install
git lfs install --system

# https://www.shellcheck.net
brew_install_or_upgrade shellcheck

# https://www.gnu.org/software/coreutils/
brew_install_or_upgrade coreutils

# https://github.com/odlp/bluesnooze
brew_install_or_upgrade bluesnooze

# topgrade to update all the stuff
brew_install_or_upgrade topgrade

# mcfly
brew tap cantino/mcfly
brew_install_or_upgrade mcfly

# ffmpeg for quick video compression
brew_install_or_upgrade ffmpeg

# mkcert
brew_install_or_upgrade mkcert
brew_install_or_upgrade nss
mkcert --install

#https://github.com/junegunn/fzf
brew_install_or_upgrade fzf
