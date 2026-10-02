autoload -Uz compinit
compinit -u   # needed for plugins using compdef

# OMZ plugin expectations
export ZSH_CACHE_DIR="$HOME/.cache/oh-my-zsh"
export ZSH_CACHE="$ZSH_CACHE_DIR"
mkdir -p "$ZSH_CACHE_DIR/completions"

# Antidote lives in ~/.antidote on every machine (setup.sh clones it)
source "$HOME/.antidote/antidote.zsh"

# rebuild bundle if missing/outdated
if [[ ! ~/.zsh_plugins.zsh -nt ~/.zsh_plugins.txt ]]; then
  antidote bundle <~/.zsh_plugins.txt >~/.zsh_plugins.zsh
fi
antidote load
