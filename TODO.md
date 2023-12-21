
## Todo
- [ ] Identify / Figure Out how to specify local/machine specific configuations
  - [ ] 1Password SSH Agent / ZSH Agent
  - [ ] wpcli
  - [ ] Brewfile in general? [use-machine-specific-brewfile](https://homebrew-file.readthedocs.io/en/latest/usage.html?cmdf=Brewfile+load+environment+variables#use-machine-specific-brewfile)
- [ ] Improve load performance
  - [ ] https://joshghent.com/zsh-speed/?cmdf=zsh+load++times
  - [ ] Switch from OMZ to Powerlevel10k (?)
    - [ ] https://github.com/romkatv/powerlevel10k#oh-my-zsh
  - [ ] Replace nvm/yarn/pnpm/npm with asdf to improve terminal performace/load time
    - [ ] https://github.com/asdf-vm/asdf

	```bash
		installAsdf() {
	# Clone repository
	echo "[INFO] Cloning asdf repository...";
	git clone https://github.com/asdf-vm/asdf.git ~/.asdf;

	echo '. $HOME/.asdf/asdf.sh' >> ~/.bashrc
	echo '. $HOME/.asdf/completions/asdf.bash' >> ~/.bashrc
	source ~/.bashrc

	# Install useful plugins (at least for me :D)
	echo "[INFO] Installing asdf plugins...";
	source $HOME/.asdf/asdf.sh;

	asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git;
	asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git;
	asdf plugin-add erlang https://github.com/asdf-vm/asdf-erlang.git;
	asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git;
	}
	```

- [ ] Fix Issues with jumping curser in prompt on autosuggestions
- [ ] port mac default setup from scripts/macos to m-cli
	 - [ ] https://github.com/rgcr/m-cli
	 - [ ] https://github.com/yannbertrand/macos-defaults
	 - [ ] https://macos-defaults.com
	 - [ ] https://github.com/mathiasbynens/dotfiles/blob/main/.macos
- [ ] Explore possible Usecases and integration for Hammerspoon
  - [ ] http://www.hammerspoon.org
- [ ] Explore possible Usecases and integration for Scriptkit
  - [ ] https://www.scriptkit.com

- [x] omz Plugins
	- [x] SSH-Agent | https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/ssh-agent
- [-] evaluate why zgen might be superiour to sheldon
  - [-] https://github.com/tarjoilija/zgen
  - [x] -> https://github.com/rossmacarthur/zsh-plugin-manager-benchmark?cmdf=sheldon+vs+zgen
- [x] Coding Font alternative to to `Operator Mono` sync automatically
	- [x] Fonts
		- [-] Regular : https://github.com/tonsky/FiraCode / https://github.com/betaboon/nerd-fonts-patcher
		- [-] Italic : https://fonts.google.com/specimen/Yellowtail
		- [x] Alternatives
			- [x] https://rubjo.github.io/victor-mono/
			- [-] https://github.com/kosimst/FiraFlott
			- [-] https://github.com/eliheuer/caskaydia-cove
	- [x] Adjust VS Code Settings
	```json
	"editor.tokenColorCustomizations": {
		"textMateRules": [
			{
			"scope": [
				//following will be in italic (=FlottFlott)
				"comment",
				"entity.name.type.class", //class names
				"keyword", //import, export, return…
				"constant", //String, Number, Boolean…, this, super
				"storage.modifier", //static keyword
				"storage.type.class.js", //class keyword
			],
			"settings": {
				"fontStyle": "italic"
			}
			},
			{
			"scope": [
				//following will be excluded from italics (VSCode has some defaults for italics)
				"invalid",
				"keyword.operator",
				"constant.numeric.css",
				"keyword.other.unit.px.css",
				"constant.numeric.decimal.js",
				"constant.numeric.json"
			],
			"settings": {
				"fontStyle": ""
			}
			}
		]
	}
	```
	- [x] Sources & Tutorials
		- [ ] https://dev.to/jandedobbeleer/a-viable-alternative-to-operator-mono-in-visual-studio-code-ge8
		- [ ] https://thomasventurini.com/articles/setup-firacodeiscript-for-italic-fonts-in-vscode/
	- [x] Misc.
		- [x] Path Nerdfont with
		```bash
		docker run -v ${PWD}/In:/in -v ${PWD}/Out:/out nerdfonts/patcher --complete --mono --adjust-line-height --careful
		```
- [x] Check and remove dotfiles from abandoned Dropbox Folder
- [-] Add github credentials manager
	- [-] https://docs.github.com/en/get-started/getting-started-with-git/caching-your-github-credentials-in-git
- [x] Check prettier to be part of the dotfiles
	- [x] https://prettier.io
- [x] remove Fig as it is abandoned and repalce autocomplete
 - [x] https://github.com/Aloxaf/fzf-tab

## Ideas
- [-] Sync Fonts (?)
	- [-] https://github.com/rsms/inter
- [-] automatic git based .dotfile management
	- [-] https://mitxela.com/projects/dotfiles_management
