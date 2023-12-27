# Load Custom Sections

source "$HOME/.config/spaceship/spaceship-githuburl.plugin.sh";

# Spaceship Custom Configuration
SPACESHIP_PROMPT_ORDER=(
	#time           # Time stamps section
	user           # Username section
	dir            # Current directory section
	host           # Hostname section
	git            # Git section (git_branch + git_status)
	#hg             # Mercurial section (hg_branch  + hg_status)
	package        # Package version
	node           # Node.js section
	#bun            # Bun section
	#deno           # Deno section
	ruby           # Ruby section
	python         # Python section
	#elm            # Elm section
	#elixir         # Elixir section
	#xcode          # Xcode section
	#swift          # Swift section
	#golang         # Go section
	perl           # Perl section
	php            # PHP section
	#rust           # Rust section
	#haskell        # Haskell Stack section
	#scala          # Scala section
	#kotlin         # Kotlin section
	#java           # Java section
	#lua            # Lua section
	#dart           # Dart section
	#julia          # Julia section
	#crystal        # Crystal section
	docker         # Docker section
	docker_compose # Docker section
	#aws            # Amazon Web Services section
	#gcloud         # Google Cloud Platform section
	#azure          # Azure section
	#venv           # virtualenv section
	#conda          # conda virtualenv section
	#dotnet         # .NET section
	#ocaml          # OCaml section
	#vlang          # V section
	#zig            # Zig section
	#purescript     # PureScript section
	#erlang         # Erlang section
	#kubectl        # Kubectl context section
	#ansible        # Ansible section
	#terraform      # Terraform workspace section
	#pulumi         # Pulumi stack section
	#ibmcloud       # IBM Cloud section
	#nix_shell      # Nix shell
	#gnu_screen     # GNU Screen section
	exec_time      # Execution time
	async          # Async jobs indicator
	line_sep       # Line break
	battery        # Battery level and status
	jobs           # Background jobs indicator
	exit_code      # Exit code section
	sudo           # Sudo indicator
	char           # Prompt character
)

## configure right prompt order
SPACESHIP_RPROMPT_ORDER=(
	rprompt_prefix # fix line break on RPROMPT
	github_url # github url from package.json
	rprompt_suffix # fix line break on RPROMPT
)

SPACESHIP_PROMPT_ADD_NEWLINE=true
SPACESHIP_PROMPT_SEPARATE_LINE=true
SPACESHIP_RPROMPT_ADD_NEWLINE=true
SPACESHIP_ASYNC_SYMBOL=""

CHAR_SYMBOL="%{$fg_bold[grey]%}❯%{$reset_color%}%{$fg_bold[lightgrey]%}❯%{$reset_color%}%{$fg_bold[white]%}❯%{$reset_color%}"
ERROR_SYMBOL="%{$fg_bold[red]%}✕ %{$reset_color%}%{$fg_bold[white]%}❯%{$reset_color%}"

SPACESHIP_CHAR_SYMBOL_FAILURE="$ERROR_SYMBOL "
SPACESHIP_CHAR_SYMBOL="$CHAR_SYMBOL "
