#!/bin/bash

# Exit if any command fails
set -e

echo "Starting macOS setup..."

# Check for Homebrew, install if we don't have it
if ! command -v brew &>/dev/null; then
  echo "Homebrew not found. Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "Homebrew is already installed"
fi

# Update Homebrew
echo "Updating Homebrew..."
brew update

# Install packages and App Store apps from Brewfile if it exists
if [ -f ./Brewfile ]; then
  echo "Restoring Homebrew packages and App Store apps from Brewfile..."
  brew bundle --file=./Brewfile
else
  echo "Brewfile not found. Skipping package restoration."
fi

# Apply macOS settings
if [ -f ./defaults.sh ]; then
  echo "Applying macOS settings..."
  bash ./defaults.sh
else
  echo "defaults.sh not found. Skipping macOS settings."
fi

# Symlink dotfiles
echo "Creating symlinks for dotfiles..."
DOTFILES=(".zshrc" ".zsh_plugins.txt" ".zsh_functions")

for file in "${DOTFILES[@]}"; do
  source_file="$(pwd)/$file"
  target_file="$HOME/$file"

  if [ -L "$target_file" ]; then
    echo "Symlink for $file already exists. Skipping."
  elif [ -f "$target_file" ]; then
    echo "Backing up existing $file to $file.bak"
    mv "$target_file" "$target_file.bak"
    echo "Creating symlink for $file"
    ln -s "$source_file" "$target_file"
  else
    echo "Creating symlink for $file"
    ln -s "$source_file" "$target_file"
  fi
done

# Symlink .config files
echo "Creating symlinks for .config files..."
mkdir -p "$HOME/.config"

CONFIG_SYMLINKS=(
  "starship.toml"
  "ghostty"
)

for item in "${CONFIG_SYMLINKS[@]}"; do
  source_item="$(pwd)/.config/$item"
  target_item="$HOME/.config/$item"

  if [ -L "$target_item" ]; then
    echo "Symlink for .config/$item already exists. Skipping."
  elif [ -e "$target_item" ]; then
    echo "Backing up existing .config/$item to .config/$item.bak"
    mv "$target_item" "$target_item.bak"
    echo "Creating symlink for .config/$item"
    ln -s "$source_item" "$target_item"
  else
    echo "Creating symlink for .config/$item"
    ln -s "$source_item" "$target_item"
  fi
done

echo "macOS setup completed!"
