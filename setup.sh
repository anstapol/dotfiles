#!/bin/bash

# Exit if any command fails
set -e

case "$(uname)" in
  Darwin) os=macos ;;
  Linux) os=linux ;;
  *) echo "Unsupported OS: $(uname)"; exit 1 ;;
esac

echo "Starting $os setup..."

if [ "$os" = macos ]; then
  # Check for Homebrew, install if we don't have it
  if ! command -v brew &>/dev/null; then
    echo "Homebrew not found. Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    eval "$(/opt/homebrew/bin/brew shellenv)"
  else
    echo "Homebrew is already installed"
  fi

  echo "Updating Homebrew..."
  brew update

  # Install packages and App Store apps from Brewfile
  echo "Restoring Homebrew packages and App Store apps from Brewfile..."
  brew bundle --file=./Brewfile

  echo "Applying macOS settings..."
  bash ./defaults.sh
fi

# Stow and git must already exist on Linux (apt/pacman install stow git zsh)
if ! command -v stow &>/dev/null; then
  echo "GNU Stow not found. Install it with your package manager first."
  exit 1
fi

# Antidote lives in the same place on every machine
if [ ! -d "$HOME/.antidote" ]; then
  echo "Installing antidote..."
  git clone --depth=1 https://github.com/mattmc3/antidote.git "$HOME/.antidote"
fi

# Stow dotfiles packages
echo "Stowing dotfiles..."
# Pre-create so stow links the files inside, not the whole dir
# (Claude Code writes runtime state into ~/.claude)
mkdir -p "$HOME/.config" "$HOME/.claude" "$HOME/.zsh"
if [ "$os" = macos ]; then
  # OpenLogi writes sockets and lock files next to its config
  mkdir -p "$HOME/.config/openlogi"
  # Colima keeps VM disks and sockets in ~/.colima
  mkdir -p "$HOME/.colima/_templates"
fi
stow -v -t "$HOME" common "$os"

# Claude Code plugins and skills all come from the anstapol marketplace, which
# common/.claude/settings.json declares. Claude Code installs them on first run,
# so there is nothing to do here.

echo "$os setup completed!"
