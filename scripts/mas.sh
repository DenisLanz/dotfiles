
echo "#############################"
echo "# Install Mac App Store CLI and various Apps"
echo "#############################"
echo ""

ROOT_DIR=$1
source "$ROOT_DIR/commands/__util.sh"

# install mac app store applications
# https://github.com/mas-cli/mas

# mac app store cli
brew_install_or_upgrade mas

# Hand mirror
mas install 1502839586
# Amphetamine
mas install 937984704
# Bear
mas install 1091189122
# Dato
mas install 1470584107
# Drafts
mas install 1435957248
# Dropmark
mas install 554314609
# Instapaper Save
mas install 1481302432
# Pi-Hole Remote
mas install 1515445551
# Reeder
mas install 1529448980
# TextSniper
mas install 1528890965
# Things
mas install 904280696
# Short Menu
mas install 510109287
# Stop the Madness
mas install 1376402589
# Deliveries
mas install 290986013
# Refined Github Safari Extension
mas install 1519867270
# Color Picker
mas install 1545870783
# The Magic Highlighter
mas install 1663033087
# Play
mas install 1596506190