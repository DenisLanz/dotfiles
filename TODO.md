
## Todo
- [ ] port mac default setup from scripts/macos to m-cli
	 - [ ] https://github.com/rgcr/m-cli
	 - [ ] https://github.com/yannbertrand/macos-defaults
	 - [ ] https://macos-defaults.com
	 - [ ] https://github.com/mathiasbynens/dotfiles/blob/main/.macos
- [-] omz Plugins
	- [-] SSH-Agent | https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/ssh-agent
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
