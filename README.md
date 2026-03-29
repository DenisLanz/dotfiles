# Dotfiles

My personal system setup. Use at your own risk.

## Install

### Prerequisites

- git (pre-installed on macOS via Xcode Command Line Tools)

### 1. Clone the repo

```sh
git clone https://github.com/DenisLanz/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
```

### 2. Bootstrap (Homebrew + Brewfile + iTerm2 integration)

Run once on a fresh machine. Installs Homebrew if missing, then installs
everything in the Brewfile.

```sh
./scripts/init
```

### 3. Copy and fill in your local env

Optional but recommended — provides directory shortcuts and other
machine-specific variables sourced by the shell on startup.

```sh
cp .env.example .env
# edit .env with your values
```

### 4. Run dotbot

Symlinks all dotfiles, creates directories, and runs setup scripts.

```sh
./install
```

## Local overrides

Files in `local/` are loaded but not tracked by git — use them for
machine-specific configuration:

- `local/Brewfile` — extra packages for this machine only
- `local/.gitconfig` — git identity (`[user]` name/email block)

## Sources & Tools

- https://github.com/anishathalye/dotbot
- https://github.com/rossmacarthur/sheldon
- https://github.com/rgcr/m-cli
- https://github.com/mas-cli/mas
- https://starship.rs

## Inspiration

- https://github.com/denysdovhan/dotfiles
- https://github.com/stefanjudis/dotfiles
- https://github.com/jlengstorf/dotfiles
