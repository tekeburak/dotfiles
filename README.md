# dotfiles

Personal macOS development environment, managed with GNU Stow.

## Contents

- `zsh/` — zsh shell config (`.zshrc`)
- `starship/` — Starship prompt config
- `ghostty/` — Ghostty terminal config

## Setup on a new machine

### 1. Install Homebrew

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### 2. Install packages

```sh
brew install stow starship neovim
brew install --cask ghostty
brew install --cask font-jetbrains-mono-nerd-font
```

### 3. Clone this repo

```sh
git clone git@github.com:tekeburak/dotfiles.git ~/dotfiles
cd ~/dotfiles
```

### 4. Remove any pre-existing Ghostty config

Ghostty may create its own config on first launch. Remove it so Stow can
take over without conflicts:

```sh
rm -rf ~/.config/ghostty
rm -f ~/Library/Application\ Support/com.mitchellh.ghostty/config
rm -f ~/Library/Application\ Support/com.mitchellh.ghostty/config.ghostty
```

### 5. Symlink the configs with Stow

```sh
cd ~/dotfiles
stow zsh starship ghostty
```

If a package fails because a real file already exists at the target,
remove that file or folder first, then run stow again.

## Notes

- Edit the Ghostty config at `~/.config/ghostty/config.ghostty`, then reload with `cmd+shift+,`.
- Do not use `ghostty +edit-config` — it recreates the config in `~/Library/Application Support/` and conflicts with Stow.
- After changing any config: `git add <package>` then `git commit`.

