#!/bin/bash

# -------------------
# Dock Settings
# -------------------
echo "Applying Dock settings..."

# Enable Dock autohide
defaults write com.apple.dock autohide -bool true

# Remove delay for Dock autohide
defaults write com.apple.dock autohide-delay -float 0

# Adjust speed for showing/hiding the Dock
defaults write com.apple.dock autohide-time-modifier -float 0.75

# Magnified icon size in the Dock
defaults write com.apple.dock largesize -int 100

# Enable Dock magnification
defaults write com.apple.dock magnification -bool true

# Set minimize effect to "scale"
defaults write com.apple.dock mineffect -string "scale"

# Minimize windows into the application icon
defaults write com.apple.dock minimize-to-application -bool true

# Disable showing recent applications in the Dock
defaults write com.apple.dock show-recents -bool false


# -------------------
# Finder Settings
# -------------------
echo "Applying Finder settings..."

# Hide external hard drives on desktop
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool false

# Hide internal hard drives on desktop
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false

# Hide removable media (USB, etc.) on desktop
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool false

# Show Finder sidebar
defaults write com.apple.finder ShowSidebar -bool true

# Show Finder path bar
defaults write com.apple.finder ShowPathbar -bool true

# Show Finder status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Default Finder view: list view
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# Arrange Finder items by name
defaults write com.apple.finder FK_DefaultIconViewSettings -dict-add arrangeBy -string "name"

# Automatically remove old items from Trash after 30 days
defaults write com.apple.finder FXRemoveOldTrashItems -bool true


# -------------------
# Hot Corners (requires ⌘)
# -------------------
echo "Configuring hot corners..."

# ↙️ Bottom-Left – Screen saver
defaults write com.apple.dock wvous-bl-corner -int 5 
defaults write com.apple.dock wvous-bl-modifier -int 1048576 

# ↘️ Bottom-Right – Quick Note
defaults write com.apple.dock wvous-br-corner -int 14 
defaults write com.apple.dock wvous-br-modifier -int 1048576 

# ↖️ Top-Left – Lock screen
defaults write com.apple.dock wvous-tl-corner -int 13 
defaults write com.apple.dock wvous-tl-modifier -int 1048576 

# ↗️ Top-Right – Notification Center
defaults write com.apple.dock wvous-tr-corner -int 12 
defaults write com.apple.dock wvous-tr-modifier -int 1048576 
