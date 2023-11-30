# Dotfiles

## Sources & Tools
- https://github.com/anishathalye/dotbot/
- https://github.com/rossmacarthur/sheldon
- https://github.com/rgcr/m-cli
- https://github.com/mas-cli/mas

## Inspiration
- https://github.com/denysdovhan/dotfiles
- https://github.com/stefanjudis/dotfiles
- https://github.com/jlengstorf/dotfiles

## Todo
- port mac default setup from scripts/macos to m-cli
	 - https://github.com/rgcr/m-cli
	 - https://github.com/yannbertrand/macos-defaults
	 - https://macos-defaults.com
	 - https://github.com/mathiasbynens/dotfiles/blob/main/.macos
- omz Plugins
	- SSH-Agent | https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/ssh-agent
- Coding Font alternative to to `Operator Mono` sync automatically
	- Fonts
		- Regular : https://github.com/tonsky/FiraCode / https://github.com/betaboon/nerd-fonts-patcher
		- Italic : https://fonts.google.com/specimen/Yellowtail
		- Alternatives
			- https://rubjo.github.io/victor-mono/
			- https://github.com/kosimst/FiraFlott
			- https://github.com/eliheuer/caskaydia-cove
	- Adjust VS Code Settings
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
	- Sources & Tutorials
		- https://dev.to/jandedobbeleer/a-viable-alternative-to-operator-mono-in-visual-studio-code-ge8
		- https://thomasventurini.com/articles/setup-firacodeiscript-for-italic-fonts-in-vscode/
	- Misc.
		- Path Nerdfont with
		```bash
		docker run -v ${PWD}/In:/in -v ${PWD}/Out:/out nerdfonts/patcher --complete --mono --adjust-line-height --careful
		```
- Check and remove dotfiles from abandoned Dropbox Folder
- Add github credentials manager
	- https://docs.github.com/en/get-started/getting-started-with-git/caching-your-github-credentials-in-git
- Check prettier to be part of the dotfiles
	- https://prettier.io

## Ideas
- Sync Fonts (?)
	- https://github.com/rsms/inter
- automatic git based .dotfile management
	- https://mitxela.com/projects/dotfiles_management