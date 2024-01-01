#
# Aliases
#

# helper
source "$DOTFILES/scripts/_utils";

# quicklinks
alias dotfiles='cd ${DOTFILES}'

# list files and folders
if _exists lsd; then
	alias lsa='lsd -la'
	alias ls='lsd -l'
else
	alias lsa='ls -la'
fi

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# cat with syntax highlighting
# https://github.com/sharkdp/bat
if _exists bat; then
	# Run to list all themes:
	#   bat --list-themes
	export BAT_THEME='base16'
	alias cat='bat'
fi

# ip address
alias ip="echo Your ip is; dig +short myip.opendns.com @resolver1.opendns.com;"

# npm stuff
alias ni='npm install'
alias nis='npm install --save'
alias nid='npm install --save-dev'
alias nig='npm install --location=global'
alias ns='npm start'
alias nt='npm test'
alias nit='npm install && npm test'
alias nk='npm link'
alias nr='npm run'
alias npm-reset='rm -rf node_modules && rm -f package-lock.json && npm install && npx node-notifier-cli -t "Done" -m "npm modules reinstalled" -s Glass -i https://cdn.rawgit.com/npm/logos/31945b5c/npm%20square/n-64.png'
alias dnm='rm -rf node_modules && npm i'

# git stuff
alias gcop='git co -p'
alias gap='git add -p'
alias gcop!='git co -p --amend'
alias gz='git zup'
alias glo="git log --graph --pretty=format:'%C(yellow)%d%Creset %Cred%h%Creset %s - %C(cyan)%an%Creset %Cgreen(%cr)%Creset' -10"
alias glm="git log --graph --pretty=format:'%C(yellow)%d%Creset %Cred%h%Creset %s - %C(cyan)%an%Creset %Cgreen(%cr)%Creset' -60"
alias gla="git log --graph --pretty=format:'%C(yellow)%d%Creset %Cred%h%Creset %s - %C(cyan)%an%Creset %Cgreen(%cr)%Creset'"
alias gis="git status --untracked-files=all"

# protect mv, cp and mkdir from overriding stuff
alias mv="mv -iv"
alias cp="cp -iv"
alias mkdir="mkdir -v"

# make executable
alias x+='chmod +x'

# Open aliases
alias open='open_command'
alias o='open'
alias oo='open .'
alias term='open -a iterm.app'

# Use tldr as help util
if _exists tldr; then
	alias help="tldr"
fi

# Quick reload of zsh environment
alias reload="source $HOME/.zshrc"