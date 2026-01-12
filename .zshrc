# ================================
# Shell / Prompt
# ================================
eval "$(starship init zsh)"

# ================================
# Localization
# ================================
export LANG=en_AU.UTF-8

# ================================
# Completion
# ================================
autoload -Uz compinit
compinit -u   # needed for plugins using compdef

# ================================
# OMZ plugin expectations
# ================================
export ZSH_CACHE_DIR="$HOME/.cache/oh-my-zsh"
export ZSH_CACHE="$ZSH_CACHE_DIR"
mkdir -p "$ZSH_CACHE_DIR/completions"

# ================================
# Plugins (Antidote)
# ================================
source /opt/homebrew/opt/antidote/share/antidote/antidote.zsh

# rebuild bundle if missing/outdated
if [[ ! ~/.zsh_plugins.zsh -nt ~/.zsh_plugins.txt ]]; then
  antidote bundle <~/.zsh_plugins.txt >~/.zsh_plugins.zsh
fi
antidote load

# ================================
# Node Version Manager (Homebrew)
# ================================
export NVM_DIR="$HOME/.nvm"
NVM_HOMEBREW="$(brew --prefix nvm 2>/dev/null)"
[ -s "$NVM_HOMEBREW/nvm.sh" ] && . "$NVM_HOMEBREW/nvm.sh"

# ================================
# PNPM
# ================================
export PNPM_HOME="$HOME/Library/pnpm"
case ":$PATH:" in
  (*":$PNPM_HOME:"*) ;;  # already in PATH
  (*) export PATH="$PNPM_HOME:$PATH" ;;
esac
alias p='pnpm'

# ================================
# Android
# ================================
export ANDROID_HOME="$HOME/Library/Android/sdk"

# ================================
# Bun
# ================================
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# ================================
# Aliases
# ================================
alias ip='dig @resolver4.opendns.com myip.opendns.com +short'
alias ip6='dig @resolver1.ipv6-sandbox.opendns.com AAAA myip.opendns.com +short -6'
alias up='brew upgrade && brew upgrade --cask -g && brew cleanup'
alias t='turbo'

# ================================
# Functions
# ================================
source "$HOME/.zsh_functions"

