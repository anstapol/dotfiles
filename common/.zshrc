# Loads every file in ~/.zsh in name order.
# common/ provides the shared files, macos/ or linux/ adds 00-<os>.zsh.
for f in ~/.zsh/*.zsh(N); do source "$f"; done
unset f

# Machine-specific additions that stay out of dotfiles
[ -f "$HOME/.zshrc.local" ] && source "$HOME/.zshrc.local"
