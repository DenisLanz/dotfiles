#!/usr/bin/env bash
#
# Github Url
#
# Return the GitHub Url from a package.json file or if pwd contains a github path

# ------------------------------------------------------------------------------
# Configuration
# ------------------------------------------------------------------------------

SPACESHIP_GITHUB_URL_SHOW="${SPACESHIP_GITHUB_URL_SHOW=true}"
SPACESHIP_GITHUB_URL_ASYNC="${SPACESHIP_GITHUB_URL_ASYNC=true}"
SPACESHIP_GITHUB_URL_PREFIX="${SPACESHIP_GITHUB_URL_PREFIX=" "}"
SPACESHIP_GITHUB_URL_SUFFIX="${SPACESHIP_GITHUB_URL_SUFFIX=" "}"
SPACESHIP_GITHUB_URL_SYMBOL="${SPACESHIP_GITHUB_URL_SYMBOL=" "}"
SPACESHIP_GITHUB_URL_COLOR="${SPACESHIP_GITHUB_URL_COLOR="blue"}"

# ------------------------------------------------------------------------------
# Section
# ------------------------------------------------------------------------------

# Show github_url status
# spaceship_ prefix before section's name is required!
# Otherwise this section won't be loaded.
spaceship_github_url() {
	# If SPACESHIP_github_url_SHOW is false, don't show github_url section
	[[ $SPACESHIP_GITHUB_URL_SHOW == false ]] && return

	# Check if node is available for execution
	spaceship::exists node || return

	# Show github_url section only when there is a package.json in current
	# working directory.

	# check if package.json is available
	# spaceship::upsearch utility helps finding files up in the directory tree.
	local is_github_url_context
	is_github_url_context="$(spaceship::upsearch package.json)"

	# 1st read the repository URL from package.json
	if [[ -n "$is_github_url_context" ]]; then
		local github_url
		github_url=$(node -p "require('./package.json').repository.url")
	fi

	# 2nd check if the dir structure contains a github url
	if [[ -z "$github_url" ]]; then

		local current_path
		current_path=$(pwd -P)
		local regex
		regex="github\.com\/([^\/]+)\/([^\/]+)"

		if [[ $current_path =~ $regex ]]; then
			# shellcheck disable=SC2154
			user="${match[1]}"
			repo="${match[2]}"
			github_url="https://github.com/$user/$repo"
		fi
	fi

	# Check if it's a github url
	[[ ! "$github_url" =~ ^https?://github\.com ]] && return

	# Display github_url section
	# spaceship::section utility composes sections. Flags are optional
	spaceship::section::v4 \
	--color "$SPACESHIP_GITHUB_URL_COLOR" \
	--prefix "$SPACESHIP_GITHUB_URL_PREFIX" \
	--suffix "$SPACESHIP_GITHUB_URL_SUFFIX" \
	--symbol "$SPACESHIP_GITHUB_URL_SYMBOL" \
	"$github_url"
}

# prefix to fix rprompt in new line
spaceship_rprompt_prefix() {
	local prefix
	prefix='%{'$'\e[1A''%}\c'
	spaceship::section::v4 "$prefix"
}

# suffix to fix rprompt in new line
spaceship_rprompt_suffix() {
	local suffix
	suffix='%{'$'\e[1B''%}\c'
	spaceship::section::v4 "$suffix"
}