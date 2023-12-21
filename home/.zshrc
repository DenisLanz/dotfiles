zmodload zsh/zprof # start profiling

# Export path to root of dotfiles repo
export DOTFILES=${DOTFILES:="$HOME/.dotfiles"}

source "$DOTFILES/scripts/_utils";

# Add custom bin to $PATH
_extend_path "$HOME/Library/Python/3.10/bin"
_extend_path "$HOME/.composer/vendor/bin"
_extend_path "$HOME/.config/bin"
_extend_path "/usr/local/bin"
_extend_path "/usr/local/sbin"

# Set Editor
export EDITOR=code

# Do not override files using `>`, but it's still possible using `>!`
set -o noclobber

# ZSH Configuration
#--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# zsh plugins managed by sheldon

# ZSH History Seetings
HISTSIZE=50000
SAVEHIST=10000

export ZSH="$HOME/.local/share/sheldon/repos/github.com/ohmyzsh/ohmyzsh"

plugins=(
	gh
	git
	github
	macos
	node
	npm
	nvm
	vscode
	docker
	docker-compose
	colored-man-pages
	ssh-agent
)

# zsh options
ZSH_CONFIG=(
	always_to_end
	auto_cd
	auto_menu
	auto_pushd
	complete_in_word
	extended_history
	flow_control
	hist_expire_dups_first
	hist_ignore_all_dups
	hist_ignore_dups
	hist_ignore_space
	inc_append_history
	menu_complete
	prompt_subst
	pushd_ignore_dups
	pushdminus
	RM_STAR_WAIT
	share_history
)

# set zsh options
_cmd_all setopt "${ZSH_CONFIG[@]}"

export ZSH_PLUGINS_ALIAS_TIPS_TEXT='💡 Use the alias: '

# omz plugins are managed by sheldon
eval "$(sheldon source)"

# autojump config
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# nvm config
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

zprof # start profiling