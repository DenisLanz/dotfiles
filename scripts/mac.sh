#!/usr/bin/env sh

# get current location
ROOT_DIR=$1
SCRIPTS_DIR=$ROOT_DIR/scripts/macos

echo ""
echo "#############################"
echo "# Setting global mac configs from mac.sh"
echo "#############################"
echo ""


# Close any open System Preferences panes, to prevent them from overriding
# settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.macos` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

killall SystemUIServer
killall "Dock"

bash "$SCRIPTS_DIR/activitymonitor.sh" "$ROOT_DIR"
bash "$SCRIPTS_DIR/chrome.sh" "$ROOT_DIR"
bash "$SCRIPTS_DIR/dock.sh" "$ROOT_DIR"
bash "$SCRIPTS_DIR/finder.sh" "$ROOT_DIR"
bash "$SCRIPTS_DIR/mail.sh" "$ROOT_DIR"
bash "$SCRIPTS_DIR/mas.sh" "$ROOT_DIR"
bash "$SCRIPTS_DIR/menubar.sh" "$ROOT_DIR"
bash "$SCRIPTS_DIR/safari.sh" "$ROOT_DIR"
bash "$SCRIPTS_DIR/system.sh" "$ROOT_DIR"
bash "$SCRIPTS_DIR/textedit.sh" "$ROOT_DIR"sss
